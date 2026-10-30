# Pump It

Pump It is a nine-control sidechain compressor for the Zoom MS-70CDR running
firmware 2.10 at 44.1 kHz. Install `dist/SideCmp.ZDL` with Zoom Effect Manager.
Back up the pedal's patches and effect list before installing custom effects.

## Routing (Mode setting)

In the standard modes, Pump It compresses the left signal using the right
signal at its position in the chain as the detector. `Sum` mixes the weighted
compressed left and right signals to both outputs; `Par` keeps them separate;
`CmpL` sends compressed left to both outputs.

`0Sum` and `0Par` are intended to replace RTFM at a Div0 group boundary:
Div0 → group 1 → Pump It → group 2. They use Div0's separated Dry R as the
detector and output either a mono sum or separate left/right signals. This 
allows you to apply effects to only the L channel — placing reverb and delay 
effects between Div0 and Pump it will accentuate the ducking effect.

## Notes on Controls

Other parameters should be intuitive, with a few notes.

The compressor's Ratio (Rat) setting is biased to enable hard ducking. Lower 
Ratio values have a normal compression effect, but at the highest Ratio levels 
the gain reduction is extra intense. This is to better enable users to truly 
PUMP IT. When Ratio is at maximum, the L signal will be hard ducked to zero.

Threshold (Thurs), Attack (Atk), Release (Rel) and Makeup (Make) params are as 
standard. 

There are controls to adjust L and R channel volume levels (LLev and RLev, 
respectively). These are especially useful on Sum or 0Sum modes where both 
channels are mixed down before output.

Users can choose a compressor model (Mod) to emulate with the Mod setting: 
Optical, FET, Vari-Mu, VCA or Neve. These will effect the voicing and speed of 
compressor behavior.

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
that a long effects chain will fit. I have experienced a freeze while adding an
effect with Pump It active, several other effects in the chain, and the custom
Looper running in experimental Long mode. This repository does not include the
Looper, and the cause has not been isolated. Keep Long mode off when editing
large chains, restart the pedal and reduce effects in the chain if the pedal becomes unresponsive.

The shared linker and UI support code are retained under `build/` and
`src/custom/common/`; other project effects and research files are not included.

## Credits

- [themanro/ZoomMultistompZDL](https://github.com/themanro/ZoomMultistompZDL) — upstream project and code/toolchain source.
- [ELynx/zoom-fx-modding](https://github.com/ELynx/zoom-fx-modding) — Div0 and RTFM creator, routing references, visionary Zoom custom effects creation leadership.
- [matujuice/zoom-ms-midistomp](https://github.com/matujuice/zoom-ms-midistomp) — MS-70CDR research, firmware notes, and project inspiration.
