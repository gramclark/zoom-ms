# Custom Effect Layout

This folder is for original effects that are not source-equivalent Airwindows
ports. They still use the same ZDL linker, safe DSP rules, and hardware-test
expectations as [../airwindows/](../airwindows/).

Current custom effects:

| Effect | Notes |
|---|---|
| [ott/](ott/) | OTT-style 3-band upward/downward compressor with `DryWet`, `Time`, `Output`, and `SplitFrq`. Not an Ableton port. |
| [sidecmp/](sidecmp/) — Pump It | L/R sidechain compressor with Sum, Parallel, Comp L, 0Sum, and 0Par output modes, independent output levels, five compressor-inspired responses, up to 24 dB makeup, a Ratio control that blends smoothly into Duck over its top 10% and hard-mutes at twice the sidechain threshold at maximum, a linked output safety limiter, and a live 0–24 dB gain-reduction needle meter. In 0Sum/0Par, Pump It replaces RTFM at the group boundary: place Div0 first, then the first effects group, Pump It, and the second effects group. These modes compress Fx L using Div0's separated Dry R as the detector, then pass the compressed L and R as a mono sum or separate L/R signals to the second group. Do not put RTFM in the same slot. The exact Div0 hardware routing still needs pedal verification. It is categorized under Dynamics. Build explicitly with `python3 build_all.py sidecmp`; experimental and requires MS-70CDR 2.10 for the animated screen. Its synthesized edit handlers beyond the first two knobs are not hardware-confirmed, so validate the added controls on the pedal before relying on them. |

**Hardware load note (2026-10-29):** A user reported the pedal becoming unresponsive when adding another effect in group 1 while the custom Loop was running, Pump It was on, and multiple other effects were active. The user confirmed Loop's experimental Long mode was on. This points to a possible interaction between Long mode's fixed extra-RAM regions and rebuilding the chain, but does not prove that is the cause; DSP-budget overload is also possible. Pump It and Loop currently share the visual-effects builder's generic declared DSP cost of 8.0, which is not a per-effect hardware measurement or a guarantee that a full chain will fit. The issue has not been reproduced in a controlled test. Until isolated, leave Loop Long off when editing a larger chain; if the issue persists with Long off, reduce the chain and compare Loop stopped/playing and Pump It bypassed/on.

Before adding a new custom effect, read
[../../docs/SAFE-DSP-RULES.md](../../docs/SAFE-DSP-RULES.md). Keep the first
build helper-free, avoid large `.fardata`, and document any product-inspired
behavior as an approximation unless it is truly source-compatible.
