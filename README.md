<img width="512" height="366" alt="SideCmp" src="https://github.com/user-attachments/assets/9d25e406-1a7b-4fe4-8163-790a9127351b" />

# Pump It

Pump It is a sidechain compressor for the Zoom MS-70CDR.
Install `dist/SideCmp.ZDL` with [Zoom Effect Manager](https://zoomeffectmanager.com/en/download/).
Back up the pedal's patches and effect list before installing custom effects.

Hardware options for real-time, sidechained compression have been relatively limited or expensive before.
Now you can now use this [staple sound of techno, house](https://youtu.be/pDmLr-uHP40?si=QF-APTjY30Ws-Bm-) and many other types of music live with only your MS-70CDR. 

## Mixdown Options and Routing (Mode setting)

When engaged, Pump It compresses the left signal using the right signal. The 
`Mode` setting changes signal routing for a few different use cases: 
`Sum` creates a summed mixdown of both channels post-compression, useful if 
running mono out from the pedal; `Par` keeps them separate L and R outputs; 
`CmpL` outputs only the processed L channel on both outputs.

**`0Sum` and `0Par` allow you to put effects on the L channel before 
compression while keeping the R channel dry.** This is possible by using Div0, 
one of the first homebrewed Zoom effects, earlier in the chain. If you're familiar 
with Div0, think of Pump It as replacing RTFM. 

**So to use effects on just the L channel, your chain should look like:
**
**Pump It ← L channel effects (aka group 1) ← Div0 
**
Placing time-based effects like reverb and delay between Div0 and Pump it will 
accentuate the ducking effect.`0Sum` then outputs a mixdown of both channels, 
`0Par` outputs separate left/right signals.

[Div0 is included in the Zoom Effects Manager, download that here](https://zoomeffectmanager.com/en/download/)

## Notes on Controls

Other parameters should be intuitive, with a few notes.

The compressor's Ratio (`Ratio`) setting is biased to enable hard ducking. Lower 
Ratio values have a normal compression effect, but at the highest Ratio levels 
the gain reduction is extra intense. This is to better enable users to truly 
PUMP IT. When Ratio is at maximum, the L signal will be hard ducked to zero.

Threshold (`Thrs`), Attack (`Atk`), Release (`Rel`) and Makeup (`MkUp`) params 
behave as standard for compressors. 

There are controls to adjust L and R channel volume levels (`LVol` and `RVol`, 
respectively). These are especially useful on Sum or 0Sum modes where both 
channels are mixed down before output.

Users can choose a compressor model (`Model`) to emulate with the Mod setting: 
Optical, FET, Vari-Mu, VCA or Neve. These will effect the voicing and speed of 
compressor behavior.

## Build and test

This is not necessary to install Pump It on your pedal. For that just download the .zdl 
file, add it to your Zoom Effect Manager folder and select it when choosing effects 
to push to your CDR pedal.

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

This is designed for the MS-70CDR running firmware 2.10 at 44.1 kHz.

The build declares a conservative DSP cost of 31.0, estimated against stock
compressors (DualComp 29.44, OptComp 30.76). This is not a hardware measurement
or a guarantee that a long effects chain will fit. Freezes have occurred under
high processing load with Pump It and several other effects active. If the pedal 
becomes unresponsive, restart the device and reduced effects in the chain.

The shared linker and UI support code are retained under `build/` and
`src/custom/common/`; other project effects and research files are not included.

## Credits

- [themanro/ZoomMultistompZDL](https://github.com/themanro/ZoomMultistompZDL) — upstream project and code/toolchain source, multistomp modding kingpin.
- [ELynx/zoom-fx-modding](https://github.com/ELynx/zoom-fx-modding) — Div0 and RTFM creator, routing references and visionary Zoom custom effects creation leadership.
- [matujuice/zoom-ms-midistomp](https://github.com/matujuice/zoom-ms-midistomp) — MS-70CDR research, firmware notes and project inspiration and dubsiren hero.
