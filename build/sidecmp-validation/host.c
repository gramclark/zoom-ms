#include "/Users/grahamclarkstecklein/Documents/UT Austin/repo/ZoomMultistompZDL-main/src/custom/sidecmp/sidecmp.c"
unsigned int _Fx_DLY_SideCmp_Info[16] = {[3]=128u,[4]=64u};
unsigned sidecmp_state_bytes(void) { return sizeof(SideCmpState); }
unsigned sidecmp_picture(void) { return _Fx_DLY_SideCmp_Info[5] != 0u; }
float sidecmp_gr_meter(uintptr_t *ctx) { uintptr_t *d=(uintptr_t *)ctx[3]; return ((SideCmpState *)d[0])->gr_meter; }
int sidecmp_model_label(unsigned value, char *out) { return model_label(value, out); }
int sidecmp_output_label(unsigned value, char *out) { return output_label(value, out); }
unsigned sidecmp_model_from_knob(float value) { return model_from_knob(value); }
unsigned sidecmp_output_from_knob(float value) { return output_mode_from_knob(value); }
float sidecmp_graph_low(void) { return graph_axis_level(DB_MIN); }
float sidecmp_graph_high(void) { return graph_axis_level(DB_MAX); }
int sidecmp_hard_duck_curve(float level, float threshold) {
  return curve_y_model(level, 1u, threshold, 100.0f, 1u, 1.0f);
}
void sidecmp_render(uintptr_t *ctx, const float *input, float *output, unsigned n) {
  float block[16]; unsigned j, i; ctx[5] = (uintptr_t)block;
  for (j=0; j<n; j+=8u) {
    for (i=0; i<8u; ++i) { block[i]=input[2u*(j+i)]; block[i+8u]=input[2u*(j+i)+1u]; }
    Fx_DLY_SideCmp(ctx);
    for (i=0; i<8u; ++i) { output[2u*(j+i)]=block[i]; output[2u*(j+i)+1u]=block[i+8u]; }
  }
}
