# Custom Effect Layout

This folder is for original effects that are not source-equivalent Airwindows
ports. They still use the same ZDL linker, safe DSP rules, and hardware-test
expectations as [../airwindows/](../airwindows/).

Current custom effects:

| Effect | Notes |
|---|---|
| [ott/](ott/) | OTT-style 3-band upward/downward compressor with `DryWet`, `Time`, `Output`, and `SplitFrq`. Not an Ableton port. |
| [sidecmp/](sidecmp/) — Pump It | L/R sidechain compressor with Sum, Parallel, Comp L, and Div0 Sum output modes, independent output levels, five compressor-inspired responses, up to 24 dB makeup, a maximum-Ratio hard mute at twice the sidechain threshold, a linked output safety limiter, and a live 0–24 dB gain-reduction needle meter. `D0Sm` processes the current `ctx[5]` Fx-buffer L/R pair (including upstream effects at Pump It's chain position) and sums the result to mono; the exact Div0/RTFM hardware routing still needs pedal verification. It is categorized under Dynamics. Build explicitly with `python3 build_all.py sidecmp`; experimental and requires MS-70CDR 2.10 for the animated screen. Its synthesized edit handlers beyond the first two knobs are not hardware-confirmed, so validate the added controls on the pedal before relying on them. |

Before adding a new custom effect, read
[../../docs/SAFE-DSP-RULES.md](../../docs/SAFE-DSP-RULES.md). Keep the first
build helper-free, avoid large `.fardata`, and document any product-inspired
behavior as an approximation unless it is truly source-compatible.
