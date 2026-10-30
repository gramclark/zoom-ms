# Pump It

Pump It is a nine-control sidechain compressor for the Zoom MS-70CDR running
firmware 2.10 at 44.1 kHz. Install `dist/SideCmp.ZDL` with Zoom Effect Manager.
Back up the pedal's patches and effect list before installing custom effects.

## Routing

In the standard modes, Pump It compresses the left signal using the right
signal at its position in the chain as the detector. `Sum` mixes the weighted
compressed left and right signals to both outputs; `Par` keeps them separate;
`CmpL` sends compressed left to both outputs.

`0Sum` and `0Par` are intended to replace RTFM at a Div0 group boundary:
Div0 → group 1 → Pump It → group 2. They use Div0's separated Dry R as the
detector and output either a mono sum or separate left/right signals. The
exact routing depends on the pedal's effect-chain behavior.

## Build and test

Building requires Python 3, Pillow, and TI C6000 CGT 8.3.15 (or a compatible
compiler). Set `TI_CGT_ROOT` to the compiler installation directory:

```sh
python3 -m pip install Pillow
TI_CGT_ROOT=/path/to/ti-cgt-c6000_8.3.15 python3 src/custom/sidecmp/build.py
```

The ZDL and Effect Manager thumbnail are written to `dist/`. The build enforces
the tested pedal size limits: 32,126 bytes total and 29,576 bytes code/data.
Run the host DSP and artwork checks with:

```sh
python3 src/custom/sidecmp/validate_host.py
```

## Hardware notes

The build declares a generic DSP cost of 8.0; this is not a measured guarantee
that a long effects chain will fit. One user reported a freeze while adding an
effect with Pump It active, several other effects in the chain, and the custom
Looper running in experimental Long mode. This repository does not include the
Looper, and the cause has not been isolated. Keep Long mode off when editing
large chains and reduce the chain if the pedal becomes unresponsive.

The shared linker and UI support code are retained under `build/` and
`src/custom/common/`; other project effects and research files are not included.

## Credits

- [themanro/ZoomMultistompZDL](https://github.com/themanro/ZoomMultistompZDL) — upstream project and code/toolchain source.
- [ELynx/zoom-fx-modding](https://github.com/ELynx/zoom-fx-modding) — Div0 and RTFM routing references.
- [matujuice/zoom-ms-midistomp](https://github.com/matujuice/zoom-ms-midistomp) — MS-70CDR research, firmware notes, and project inspiration.
