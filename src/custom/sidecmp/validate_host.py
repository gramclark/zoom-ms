#!/usr/bin/env python3
"""Exercise SideCmp DSP and its zvis frame path on the host."""
import ctypes as C
import json
import subprocess
import sys
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[2]
OUT = ROOT / "build" / "sidecmp-validation"
OUT.mkdir(parents=True, exist_ok=True)

manifest = json.loads((HERE / "manifest.json").read_text())
assert manifest["materialize_init"] is False
selection_art = (HERE / "selection_art.bin").read_bytes()
assert len(selection_art) == 1024 and any(selection_art)
assert not any(selection_art[7 * 128:]), "bottom eight rows must remain clear for pedal knob icons"
assert len(manifest["params"]) == 9
assert manifest["display_name"] == "Pump It"
assert all(len(param["name"]) <= 4 for param in manifest["params"])
assert manifest["params"][5]["max"] == 3
checks = ["selection art is 128x64, with a clear bottom margin for pedal knob icons"]

subprocess.run([sys.executable, str(HERE / "build.py"), "--art-only"], check=True)
(OUT / "host.c").write_text(
    '#include "' + str(HERE / "sidecmp.c") + '"\n'
    "unsigned int _Fx_DLY_SideCmp_Info[16] = {[3]=128u,[4]=64u};\n"
    "unsigned sidecmp_state_bytes(void) { return sizeof(SideCmpState); }\n"
    "unsigned sidecmp_picture(void) { return _Fx_DLY_SideCmp_Info[5] != 0u; }\n"
    "int sidecmp_frame_pixel(uintptr_t *ctx, unsigned x, unsigned y) {\n"
    "  uintptr_t *d=(uintptr_t *)ctx[3]; SideCmpState *s=(SideCmpState *)d[0];\n"
    "  return !!(s->z.frame[(y >> 3u) * ZV_W + x] & (1u << (y & 7u)));\n"
    "}\n"
    "float sidecmp_gr_meter(uintptr_t *ctx) { uintptr_t *d=(uintptr_t *)ctx[3]; return ((SideCmpState *)d[0])->gr_meter; }\n"
    "int sidecmp_model_label(unsigned value, char *out) { return model_label(value, out); }\n"
    "int sidecmp_output_label(unsigned value, char *out) { return output_label(value, out); }\n"
    "unsigned sidecmp_model_from_knob(float value) { return model_from_knob(value); }\n"
    "unsigned sidecmp_output_from_knob(float value) { return output_mode_from_knob(value); }\n"
    "float sidecmp_limiter_gain(uintptr_t *ctx) { uintptr_t *d=(uintptr_t *)ctx[3]; return ((SideCmpState *)d[0])->limit_gain; }\n"
    "int sidecmp_gr_meter_x(float reduction) { return gr_meter_x(reduction); }\n"
    "int sidecmp_gr_meter_y(float reduction) { return gr_meter_y(reduction); }\n"
    "void sidecmp_render(uintptr_t *ctx, const float *input, float *output, unsigned n) {\n"
    "  float block[16]; unsigned j, i; ctx[5] = (uintptr_t)block;\n"
    "  for (j=0; j<n; j+=8u) {\n"
    "    for (i=0; i<8u; ++i) { block[i]=input[2u*(j+i)]; block[i+8u]=input[2u*(j+i)+1u]; }\n"
    "    Fx_DLY_SideCmp(ctx);\n"
    "    for (i=0; i<8u; ++i) { output[2u*(j+i)]=block[i]; output[2u*(j+i)+1u]=block[i+8u]; }\n"
    "  }\n"
    "}\n"
)
subprocess.run(
    [
        "cc", "-O2", "-ffp-contract=off", "-Wno-unknown-pragmas", "-DZV_HOST",
        "-shared", "-fPIC",
        "-I", str(HERE), "-I", str(HERE.parent / "common"),
        "-I", str(ROOT / "src" / "airwindows" / "common"),
        str(OUT / "host.c"), "-o", str(OUT / "host.so"),
    ],
    check=True,
)

lib = C.CDLL(str(OUT / "host.so"))
lib.sidecmp_state_bytes.restype = C.c_uint
lib.sidecmp_picture.restype = C.c_uint
lib.sidecmp_frame_pixel.argtypes = [C.POINTER(C.c_size_t), C.c_uint, C.c_uint]
lib.sidecmp_frame_pixel.restype = C.c_int
lib.sidecmp_gr_meter.argtypes = [C.POINTER(C.c_size_t)]
lib.sidecmp_gr_meter.restype = C.c_float
lib.sidecmp_model_label.argtypes = [C.c_uint, C.c_char_p]
lib.sidecmp_model_label.restype = C.c_int
lib.sidecmp_output_label.argtypes = [C.c_uint, C.c_char_p]
lib.sidecmp_output_label.restype = C.c_int
lib.sidecmp_model_from_knob.argtypes = [C.c_float]
lib.sidecmp_model_from_knob.restype = C.c_uint
lib.sidecmp_output_from_knob.argtypes = [C.c_float]
lib.sidecmp_output_from_knob.restype = C.c_uint
lib.sidecmp_limiter_gain.argtypes = [C.POINTER(C.c_size_t)]
lib.sidecmp_limiter_gain.restype = C.c_float
lib.sidecmp_gr_meter_x.argtypes = [C.c_float]
lib.sidecmp_gr_meter_x.restype = C.c_int
lib.sidecmp_gr_meter_y.argtypes = [C.c_float]
lib.sidecmp_gr_meter_y.restype = C.c_int
PTR = C.POINTER(C.c_float)
lib.sidecmp_render.argtypes = [C.POINTER(C.c_size_t), PTR, PTR, C.c_uint]


class Instance:
    def __init__(self):
        self.size = lib.sidecmp_state_bytes()
        self.arena = (C.c_uint64 * ((self.size + 31) // 8 + 4))()
        C.memset(C.addressof(self.arena), 0xA5, C.sizeof(self.arena))
        self.base = C.addressof(self.arena) + 16
        self.params = (C.c_float * 14)(
            1, 0, 0, 0, 0, 0.28, 0.35, 0.20, 0.45, 0,
            0, 0.5, 0.5, 0.03
        )
        self.dry = (C.c_float * 16)()
        self.desc = (C.c_size_t * 2)(self.base, self.base + self.size)
        self.src = C.c_uint(0x12345678)
        self.dst = C.c_uint(0)
        self.dstptr = C.pointer(self.dst)
        self.ctx = (C.c_size_t * 13)()
        for index, value in ((1, C.addressof(self.params)), (3, C.addressof(self.desc)),
                             (4, C.addressof(self.dry)),
                             (11, C.addressof(self.dstptr)), (12, C.addressof(self.src))):
            self.ctx[index] = value

    def run(self, samples, dry_samples=None):
        x = (C.c_float * len(samples))(*samples)
        y = (C.c_float * len(samples))()
        dry_source = samples if dry_samples is None else dry_samples
        assert len(dry_source) == len(samples)
        for j in range(0, len(samples) // 2, 8):
            for i in range(8):
                self.dry[i] = dry_source[2 * (j + i)]
                self.dry[i + 8] = dry_source[2 * (j + i) + 1]
        lib.sidecmp_render(self.ctx, x, y, len(samples) // 2)
        assert self.dst.value == self.src.value
        assert all(abs(v) < 8.0 for v in y)
        assert C.string_at(C.addressof(self.arena), 16) == b"\xA5" * 16
        assert C.string_at(self.base + self.size, 16) == b"\xA5" * 16
        return list(y)


def stereo(program, key):
    data = []
    for p, k in zip(program, key):
        data.extend((p, k))
    return data


frames = 8192
program = [0.4] * frames
key_silent = [0.0] * frames
key_loud = [0.8] * frames

bypass = Instance()
bypass.params[0] = 0
input_data = stereo(program[:64], key_loud[:64])
assert max(abs(a - b) for a, b in zip(bypass.run(input_data), input_data)) < 1e-6
checks.append("bypass preserves both input channels exactly")

no_key = Instance()
no_key_out = no_key.run(stereo(program, key_silent))
assert max(abs(no_key_out[2 * i] - 0.4) for i in range(frames)) < 1e-5
checks.append("L is not compressed without a right-channel key signal")

separate = Instance()
separate.params[5] = 0.58
separate.params[6] = 1.0
separate.params[7] = 0.0
separate.params[10] = 0.01
separate_out = separate.run(stereo(program, key_loud))
steady_loud = sum(abs(separate_out[2 * i]) for i in range(frames - 1024, frames)) / 1024
assert steady_loud < 0.08, steady_loud
assert all(abs(separate_out[2 * i + 1] - key_loud[i]) < 1e-6 for i in range(frames))
checks.append("sidechain drives full-wet compression; Parallel mode passes R separately")

low_key = Instance()
low_key.params[6] = 1.0
low_key.params[7] = 0.0
low_key.params[10] = 0.01
low_key_out = low_key.run(stereo(program, [0.08] * frames))
steady_low = sum(abs(low_key_out[2 * i]) for i in range(frames - 1024, frames)) / 1024
assert steady_low < 0.12, steady_low
checks.append("default threshold responds to an independent low-level sidechain")

sum_mode = Instance()
sum_mode.params[5] = 0.58
sum_mode.params[6] = 1.0
sum_mode.params[7] = 0.0
sum_mode.params[10] = 0.0
sum_mode_out = sum_mode.run(stereo(program, key_loud))
assert all(abs(sum_mode_out[2 * i] - sum_mode_out[2 * i + 1]) < 1e-7
           for i in range(frames))
assert max(abs(sum_mode_out[2 * i] -
               (separate_out[2 * i] + key_loud[i])) for i in range(frames)) < 1e-5
checks.append("Sum mode adds weighted compressed L and R and duplicates the sum")

compressed_both = Instance()
compressed_both.params[5] = 0.58
compressed_both.params[6] = 1.0
compressed_both.params[7] = 0.0
compressed_both.params[10] = 0.02
compressed_both_out = compressed_both.run(stereo(program, key_loud))
assert all(abs(compressed_both_out[2 * i] -
               compressed_both_out[2 * i + 1]) < 1e-7 for i in range(frames))
assert max(abs(compressed_both_out[2 * i] - separate_out[2 * i])
           for i in range(frames)) < 1e-6
checks.append("Comp L mode outputs only compressed L on both channels")

levels = Instance()
levels.params[10] = 0.0
levels.params[11] = 0.25
levels.params[12] = 0.75
levels.params[5] = 0.0
levels.params[6] = 0.0
level_out = levels.run(stereo([0.2] * frames, [0.1] * frames))
assert max(abs(level_out[2 * i] - (0.2 * 0.25 + 0.1 * 2.25))
           for i in range(frames)) < 1e-5
checks.append("L and R output levels independently scale the Sum contributions")

silent_levels = Instance()
silent_levels.params[10] = 0.01
silent_levels.params[11] = 0.0
silent_levels.params[12] = 0.0
silent_out = silent_levels.run(stereo(program[:64], key_loud[:64]))
assert max(abs(x) for x in silent_out) == 0.0
checks.append("zero output levels mute both channels")

pump = Instance()
pump.params[5] = 0.58
pump.params[6] = 1.0
pump.params[7] = 0.0
pump.params[8] = 0.0
pump.params[9] = 1.0
pump.params[10] = 0.01
pump_out = pump.run(stereo(program, key_loud[:frames // 2] +
                           key_silent[frames // 2:]))
ducked = sum(abs(pump_out[2 * i]) for i in range(1024, 2048)) / 1024
recovered = sum(abs(pump_out[2 * i]) for i in range(frames - 1024, frames)) / 1024
assert recovered > ducked * 4.0, (ducked, recovered)
assert lib.sidecmp_gr_meter(pump.ctx) > 0.0
checks.append("24 dB makeup supports strong kick-triggered pumping and GR metering")

for model in range(5):
    hard_duck = Instance()
    hard_duck.params[5] = 0.0
    hard_duck.params[6] = 1.0
    hard_duck.params[7] = 0.0
    hard_duck.params[10] = 0.01
    hard_duck.params[13] = model * 0.01
    hard_duck_out = hard_duck.run(stereo(program, key_loud))
    assert max(abs(hard_duck_out[2 * i])
               for i in range(frames - 1024, frames)) == 0.0, model
checks.append("maximum Ratio reaches exact silence for all five models above twice Threshold")

near_max = Instance()
near_max.params[5] = 0.0
near_max.params[6] = 0.99
near_max.params[7] = 0.0
near_max.params[10] = 0.01
near_max.params[13] = 0.01
near_max_out = near_max.run(stereo(program, key_loud))
assert max(abs(near_max_out[2 * i])
           for i in range(frames - 1024, frames)) > 0.0
checks.append("hard duck is reserved for the maximum Ratio position")

for mode, expected_left, expected_right in (
        (0.0, 0.8, 0.8), (0.01, 0.0, 0.8), (0.02, 0.0, 0.0)):
    routed = Instance()
    routed.params[5] = 0.0
    routed.params[6] = 1.0
    routed.params[7] = 0.0
    routed.params[10] = mode
    routed.params[13] = 0.01
    routed_out = routed.run(stereo(program, key_loud))
    tail = range(frames - 1024, frames)
    assert max(abs(routed_out[2 * i] - expected_left) for i in tail) < 1e-6
    assert max(abs(routed_out[2 * i + 1] - expected_right) for i in tail) < 1e-6
checks.append("hard duck preserves Sum, Parallel, and Comp L output routing")

div0_sum = Instance()
div0_sum.params[5] = 1.0
div0_sum.params[6] = 0.0
div0_sum.params[10] = 0.03
div0_out = div0_sum.run(stereo([0.0] * frames, [0.0] * frames),
                        stereo([0.1] * frames, [0.2] * frames))
assert max(abs(div0_out[2 * i] - 0.3) for i in range(frames)) < 1e-5
assert max(abs(div0_out[2 * i + 1] - 0.3) for i in range(frames)) < 1e-5
checks.append("D0Sm reads separate Div0 Dry L/R channels and sums both to mono")

limited = Instance()
limited.params[5] = 1.0
limited.params[6] = 0.0
limited.params[9] = 1.0
limited.params[10] = 0.0
limited.params[11] = 1.0
limited.params[12] = 1.0
limited_out = limited.run(stereo([0.4] * frames, [0.4] * frames))
assert max(abs(value) for value in limited_out) <= 0.95001
assert 0.0 < lib.sidecmp_limiter_gain(limited.ctx) < 0.1
checks.append("linked output limiter keeps maximum makeup/levels below digital full scale")

model_levels = []
for model in range(5):
    instance = Instance()
    instance.params[5] = 0.58
    instance.params[6] = 0.60
    instance.params[7] = 0.0
    instance.params[10] = 0.01
    instance.params[13] = model * 0.01
    output = instance.run(stereo(program, key_loud))
    model_levels.append(sum(abs(output[2 * i]) for i in range(frames - 1024, frames)) / 1024)
assert all(0.0 < level < 0.4 for level in model_levels), model_levels
assert max(model_levels) - min(model_levels) > 0.0001, model_levels
labels = []
for value in range(5):
    label_buffer = C.create_string_buffer(8)
    length = lib.sidecmp_model_label(value, label_buffer)
    labels.append(label_buffer.value[:length].decode("ascii"))
assert labels == ["Opt", "FET", "VMu", "VCA", "Nev"], labels
output_labels = []
for value in range(4):
    label_buffer = C.create_string_buffer(8)
    length = lib.sidecmp_output_label(value, label_buffer)
    output_labels.append(label_buffer.value[:length].decode("ascii"))
assert output_labels == ["Sum", "Par", "CmpL", "D0Sm"], output_labels
assert [lib.sidecmp_output_from_knob(value * 0.01) for value in range(4)] == list(range(4))
assert [lib.sidecmp_model_from_knob(value * 0.01) for value in range(5)] == list(range(5))
checks.append("both pedal selectors have one labeled detent per choice")

assert [lib.sidecmp_gr_meter_x(x) for x in (0.0, 12.0, 24.0)] == [116, 64, 12]
assert [lib.sidecmp_gr_meter_y(x) for x in (0.0, 12.0, 24.0)] == [53, 11, 53]
assert lib.sidecmp_gr_meter_x(48.0) == 12
checks.append("needle sweeps across the full-screen 0-24 dB gain-reduction meter")
assert lib.sidecmp_picture() == 1
idle_meter = Instance()
idle_meter.run(stereo(program, key_silent))
assert lib.sidecmp_frame_pixel(idle_meter.ctx, 1, 1) == 1
assert lib.sidecmp_frame_pixel(idle_meter.ctx, 116, 53) == 1
assert lib.sidecmp_frame_pixel(idle_meter.ctx, 64, 11) == 1
assert lib.sidecmp_gr_meter(idle_meter.ctx) == 0.0
hard_meter = Instance()
hard_meter.params[5] = 0.58
hard_meter.params[6] = 1.0
hard_meter.params[7] = 0.0
hard_meter.run(stereo(program, key_loud))
assert lib.sidecmp_gr_meter(hard_meter.ctx) > 23.0
changed_pixels = sum(
    lib.sidecmp_frame_pixel(idle_meter.ctx, x, y) !=
    lib.sidecmp_frame_pixel(hard_meter.ctx, x, y)
    for y in range(10, 58) for x in range(12, 117)
)
assert changed_pixels > 20, changed_pixels
checks.append("live needle rests at 0 dB and swings to 24 dB under hard reduction")

print(json.dumps({"state_bytes": lib.sidecmp_state_bytes(),
                  "model_levels": model_levels, "checks": checks}, indent=2))
