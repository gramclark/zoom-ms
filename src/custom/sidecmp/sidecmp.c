/* SideCmp: compress the left input using the right input as the sidechain.
 * The visible effect card shows a live gain-reduction meter. */
#include <stdint.h>
#include "zvis.h"
#include "sidecmp_art.h"

extern unsigned int _Fx_DLY_SideCmp_Info[];

#define MAGIC 0x50495434u
#define FXID  469u
#define SR    44100.0f
#define OUTPUT_CEILING 0.95f

typedef struct {
    unsigned magic, active_model;
    float optical_fast, optical_slow, fet_env, varimu_env, vca_env, neve_env;
    float vca_gain, neve_gain, gr_meter, limit_gain;
    float draw_gr;
    ZvState z;
} SideCmpState;

ZV_INLINE(recip_approx_pos)
static inline float recip_approx_pos(float x)
{
    union { float f; uint32_t u; } conv;
    conv.f = x;
    conv.u = 0x7EF311C3u - conv.u;
    {
        float y = conv.f;
        y = y * (2.0f - x * y);
        y = y * (2.0f - x * y);
        return y * (2.0f - x * y);
    }
}

ZV_INLINE(clamp01)
static inline float clamp01(float x)
{
    if (!(x > 0.0f)) return 0.0f;
    return x > 1.0f ? 1.0f : x;
}

ZV_INLINE(log2_pos)
static inline float log2_pos(float x)
{
    union { float f; uint32_t u; } conv;
    float m, f;
    int exponent;
    if (!(x > 1.0e-20f)) x = 1.0e-20f;
    conv.f = x;
    exponent = (int)((conv.u >> 23) & 255u) - 127;
    m = (float)(conv.u & 0x7FFFFFu) * (1.0f / 8388608.0f);
    f = m * (1.44269504f + m * (-0.72134752f + m *
        (0.48089835f + m * (-0.36067376f + m *
        (0.28853901f - 0.24044918f * m)))));
    return (float)exponent + f;
}

ZV_INLINE(level_db)
static inline float level_db(float level)
{
    return 6.02059991f * log2_pos(level);
}

ZV_INLINE(time_coeff)
static inline float time_coeff(float seconds)
{
    return recip_approx_pos(1.0f + SR * seconds);
}

ZV_INLINE(follow)
static inline float follow(float state, float target, float attack, float release)
{
    float coefficient = target > state ? attack : release;
    return state + coefficient * (target - state);
}

ZV_INLINE(follow_gain)
static inline float follow_gain(float state, float target,
                                float attack, float release)
{
    float coefficient = target < state ? attack : release;
    return state + coefficient * (target - state);
}

ZV_INLINE(compute_gain)
static inline float compute_gain(float level, float threshold, float ratio,
                                 float knee)
{
    float ratio_inv, compressed, low, high, t;
    ratio_inv = recip_approx_pos(ratio);
    compressed = level > threshold ?
                 threshold + (level - threshold) * ratio_inv : level;
    low = threshold * (1.0f - knee);
    high = threshold * (1.0f + knee);
    if (level > low && level < high) {
        t = (level - low) * recip_approx_pos(high - low);
        t = t * t * (3.0f - 2.0f * t);
        compressed = level + t * (compressed - level);
    }
    return level > 1.0e-6f ? compressed * recip_approx_pos(level) : 1.0f;
}

ZV_INLINE(color_stage)
static inline float color_stage(float x, unsigned model, float reduction)
{
    float amount;
    if (model == 1u) amount = 0.070f * reduction;
    else if (model == 2u) amount = 0.045f * reduction;
    else if (model == 4u) amount = 0.048f * reduction;
    else if (model == 0u) amount = 0.008f * reduction;
    else amount = 0.002f * reduction;
    return x + amount * x * (x < 0.0f ? -x : x) - amount * 0.18f * x * x;
}

ZV_INLINE(model_ratio)
static inline float model_ratio(unsigned model, float ratio, float level, float threshold)
{
    float over, shape;
    if (model != 2u) return ratio;
    over = level > threshold ? level - threshold : 0.0f;
    shape = over * recip_approx_pos(level + threshold + 0.0001f);
    return 1.0f + (ratio - 1.0f) * shape;
}

ZV_INLINE(knee_for_model)
static inline float knee_for_model(unsigned model)
{
    if (model == 0u) return 0.60f;
    if (model == 1u) return 0.08f;
    if (model == 2u) return 0.90f;
    if (model == 4u) return 0.50f;
    return 0.18f;
}

ZV_INLINE(sanitize_level)
static inline float sanitize_level(float x)
{
    float level = x < 0.0f ? -x : x;
    if (!(level >= 0.0f)) return 0.0f;
    if (level > 4.0f) return 4.0f;
    return level;
}

ZV_INLINE(graph_axis_level)
static inline float graph_axis_level(float db)
{
    float x = db * 0.166096404f;
    int exponent = (int)x;
    float frac = x - (float)exponent;
    if (frac < 0.0f) { exponent--; frac += 1.0f; }
    {
        float mant = 1.0f + frac * (0.69314718f + frac *
                    (0.24022651f + frac * (0.05550411f + frac * 0.00961813f)));
        if (exponent < 0) {
            unsigned shift = (unsigned)(-exponent);
            if (shift > 30u) return 0.0f;
            return mant * recip_approx_pos((float)(1u << shift));
        }
        {
            union { uint32_t u; float f; } scale;
            scale.u = (uint32_t)(127 + exponent) << 23;
            return mant * scale.f;
        }
    }
}

ZV_INLINE(gr_meter_x)
static inline int gr_meter_x(float reduction)
{
    float scaled = clamp01(reduction * (1.0f / 24.0f));
    return 116 - (int)(scaled * 104.0f + 0.5f);
}

ZV_INLINE(gr_meter_y)
static inline int gr_meter_y(float reduction)
{
    int dx = gr_meter_x(reduction) - 64;
    return 51 - (28 * (2704 - dx * dx) / 2704);
}

ZV_INLINE(draw_gr_meter)
static inline void draw_gr_meter(SideCmpState *st)
{
    int x = gr_meter_x(st->draw_gr), y = gr_meter_y(st->draw_gr);
    zv_copy(&st->z, SIDECMP_BG);
    zv_line(&st->z, 63, 53, x - 1, y, 1);
    zv_line(&st->z, 65, 53, x + 1, y, 1);
    zv_line(&st->z, 64, 53, x, y, 1);
    zv_fill(&st->z, 63, 52, 65, 54, 1);
    zv_submit(&st->z);
}

ZV_INLINE(model_from_knob)
static inline unsigned model_from_knob(float value)
{
    unsigned model = (unsigned)(int)(zoom_param_norm01(value, 0.03f) *
                                     100.0f + 0.5f);
    return model > 4u ? 4u : model;
}

ZV_INLINE(output_mode_from_knob)
static inline unsigned output_mode_from_knob(float value)
{
    unsigned mode = (unsigned)(int)(zoom_param_norm01(value, 0.0f) *
                                    100.0f + 0.5f);
    return mode > 3u ? 3u : mode;
}

ZV_INLINE(model_label)
static inline int model_label(unsigned value, char *out)
{
    const char *label;
    unsigned i, index = value > 4u ? 4u : value;
    if (index == 0u) label = "Opt";
    else if (index == 1u) label = "FET";
    else if (index == 2u) label = "VMu";
    else if (index == 3u) label = "VCA";
    else label = "Nev";
    for (i = 0u; i < 5u && label[i]; ++i) out[i] = label[i];
    out[i] = 0;
    return (int)i;
}

ZV_INLINE(output_label)
static inline int output_label(unsigned value, char *out)
{
    const char *label;
    unsigned i;
    if (value == 0u) label = "Sum";
    else if (value == 1u) label = "Par";
    else if (value == 2u) label = "CmpL";
    else label = "D0Sm";
    for (i = 0u; i < 7u && label[i]; ++i) out[i] = label[i];
    out[i] = 0;
    return (int)i;
}

#pragma CODE_SECTION(Fx_DLY_SideCmp, ".audio")
void Fx_DLY_SideCmp(uintptr_t *ctx)
{
    float *params = (float *)ctx[1];
    float *fx = (float *)ctx[5];
    float *dry = (float *)ctx[4];
    uintptr_t *desc = (uintptr_t *)ctx[3];
    unsigned int *magic_src = (unsigned int *)ctx[12];
    unsigned int *magic_dst = *(unsigned int **)ctx[11];
    unsigned int *info = _Fx_DLY_SideCmp_Info;
    uintptr_t base, end;
    SideCmpState *st;
    float threshold, ratio, ratio_norm, attack_norm, release_norm;
    float attack, release, makeup, left_level, right_level;
    float gr_attack, gr_release, limit_release;
    float optical_fast_attack, optical_slow_attack;
    float optical_fast_release, optical_slow_release;
    unsigned model, output_mode, hard_duck;
    unsigned i;
    int visible;

    *magic_dst = *magic_src;
    if (!desc) return;
    base = desc[0];
    end = desc[1];
    if (!base || end <= base) return;
    base += (8u - (base & 7u)) & 7u;
    if (end - base < sizeof(SideCmpState)) return;
    st = (SideCmpState *)base;
    if (st->magic != MAGIC) {
        st->magic = MAGIC;
        st->active_model = 5u;
        st->optical_fast = st->optical_slow = 0.0f;
        st->fet_env = st->varimu_env = st->vca_env = st->neve_env = 0.0f;
        st->vca_gain = st->neve_gain = 1.0f;
        st->gr_meter = 0.0f;
        st->limit_gain = 1.0f;
        zv_init(&st->z, FXID, info);
    }

    visible = zv_visible(&st->z, ctx);
    zv_service(&st->z, info, visible);
    zv_hide_knob_boxes(&st->z, info);

    if (params[0] < 0.5f) {
        return;
    }

    {
        float threshold_norm = zoom_param_norm01(params[5], 0.28f);
        threshold = 0.0001f + 0.25f * threshold_norm *
                    threshold_norm * threshold_norm;
    }
    ratio_norm = zoom_param_norm01(params[6], 0.35f);
    ratio = 1.0f + 99.0f * ratio_norm * ratio_norm;
    hard_duck = ratio_norm >= 0.995f;
    attack_norm = zoom_param_norm01(params[7], 0.20f);
    release_norm = zoom_param_norm01(params[8], 0.45f);
    {
        float makeup_norm = zoom_param_norm01(params[9], 0.0f);
        makeup = graph_axis_level(24.0f * makeup_norm * makeup_norm);
    }
    output_mode = output_mode_from_knob(params[10]);
    left_level = 4.0f * zoom_param_norm01(params[11], 0.5f) *
                 zoom_param_norm01(params[11], 0.5f);
    right_level = 4.0f * zoom_param_norm01(params[12], 0.5f) *
                  zoom_param_norm01(params[12], 0.5f);
    model = model_from_knob(params[13]);
    if (st->active_model != model) {
        st->optical_fast = st->optical_slow = 0.0f;
        st->fet_env = st->varimu_env = st->vca_env = st->neve_env = 0.0f;
        st->vca_gain = st->neve_gain = 1.0f;
        st->active_model = model;
    }

    if (model == 1u) {
        /* The FET-style attack/release controls run faster clockwise. */
        float a = 1.0f - attack_norm, r = 1.0f - release_norm;
        attack = time_coeff(0.00003f + a * a * 0.001f);
        release = time_coeff(0.01f + r * r * 0.99f);
    } else if (model == 0u) {
        attack = time_coeff(0.008f + attack_norm * attack_norm * 0.10f);
        release = time_coeff(0.04f + release_norm * release_norm * 0.65f);
    } else if (model == 2u) {
        attack = time_coeff(0.003f + attack_norm * attack_norm * 0.045f);
        release = time_coeff(0.08f + release_norm * release_norm * 0.75f);
    } else if (model == 4u) {
        attack = time_coeff(0.001f + attack_norm * attack_norm * 0.06f);
        release = time_coeff(0.06f + release_norm * release_norm * 1.20f);
    } else {
        attack = time_coeff(0.0001f + attack_norm * attack_norm * 0.03f);
        release = time_coeff(0.01f + release_norm * release_norm * 0.99f);
    }
    if (model == 0u) {
        optical_fast_attack = time_coeff(0.012f + attack_norm * 0.04f);
        optical_slow_attack = time_coeff(0.035f + attack_norm * 0.08f);
        optical_fast_release = time_coeff(0.06f);
        optical_slow_release = time_coeff(0.55f + release_norm * 1.2f);
    }
    gr_attack = time_coeff(0.015f);
    gr_release = time_coeff(0.18f);
    limit_release = time_coeff(0.05f);

    for (i = 0; i < 8u; ++i) {
        float *input = output_mode == 3u && dry ? dry : fx;
        float program = input[i], key = input[i + 8u];
        float key_level = sanitize_level(key), detector, effective_ratio;
        float knee, gain, wet, processed, output_left, output_right, reduction;
        float peak;
        if (model == 0u) {
            st->optical_fast = follow(st->optical_fast, key_level,
                                      optical_fast_attack, optical_fast_release);
            st->optical_slow = follow(st->optical_slow, st->optical_fast,
                                      optical_slow_attack, optical_slow_release);
            detector = 0.65f * st->optical_fast + 0.35f * st->optical_slow;
        } else if (model == 1u) {
            st->fet_env = follow(st->fet_env, key_level, attack, release);
            detector = st->fet_env;
        } else if (model == 2u) {
            st->varimu_env = follow(st->varimu_env, key_level, attack, release);
            detector = st->varimu_env;
        } else if (model == 4u) {
            float feedback_key = key_level * st->neve_gain;
            st->neve_env = follow(st->neve_env, feedback_key, attack, release);
            detector = st->neve_env;
        } else {
            st->vca_env = follow(st->vca_env, key_level, attack, release);
            detector = st->vca_env;
        }

        effective_ratio = model_ratio(model, ratio, detector, threshold);
        if (model == 0u) effective_ratio = 1.0f + (effective_ratio - 1.0f) * 0.72f;
        if (model == 4u) effective_ratio = 1.0f + (effective_ratio - 1.0f) * 0.86f;
        knee = knee_for_model(model);
        gain = compute_gain(detector, threshold, effective_ratio, knee);
        if (model == 3u) {
            st->vca_gain = follow_gain(st->vca_gain, gain, attack, release);
            gain = st->vca_gain;
        } else if (model == 4u) {
            st->neve_gain = follow_gain(st->neve_gain, gain, attack, release);
            gain = st->neve_gain;
        }
        if (hard_duck && detector > threshold) {
            if (detector >= 2.0f * threshold) gain = 0.0f;
            else gain *= 2.0f - detector * recip_approx_pos(threshold);
        }

        reduction = gain < 1.0f ? -level_db(gain) : 0.0f;
        if (reduction > 24.0f) reduction = 24.0f;
        st->gr_meter = follow(st->gr_meter, reduction, gr_attack, gr_release);
        wet = color_stage(program * gain * makeup, model, 1.0f - gain);
        processed = wet * left_level;
        if (output_mode == 0u || output_mode == 3u) {
            output_left = processed + key * right_level;
            output_right = output_left;
        } else if (output_mode == 1u) {
            output_left = processed;
            output_right = key * right_level;
        } else {
            output_left = processed;
            output_right = processed;
        }
        peak = output_left < 0.0f ? -output_left : output_left;
        {
            float right_peak = output_right < 0.0f ? -output_right : output_right;
            if (right_peak > peak) peak = right_peak;
        }
        if (peak > OUTPUT_CEILING) {
            float required = OUTPUT_CEILING * recip_approx_pos(peak);
            if (required < st->limit_gain) st->limit_gain = required;
        } else {
            st->limit_gain += limit_release * (1.0f - st->limit_gain);
        }
        fx[i] = output_left * st->limit_gain;
        fx[i + 8u] = output_right * st->limit_gain;
    }

    if (!visible) {
        return;
    }
    if (st->z.phase != ZV_IDLE || st->z.since < ZV_GAP) return;

    st->draw_gr = st->gr_meter;
    draw_gr_meter(st);
}

int ZDL_GetLabel_5(unsigned int value, char *out)
{
    return output_label(value, out);
}

int ZDL_GetLabel_8(unsigned int value, char *out)
{
    return model_label(value, out);
}
