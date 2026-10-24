# Zoom's and TI's files: kept locally

This repository publishes its own work only. Files that belong to Zoom or to
Texas Instruments stay on your computer: they are listed in `.gitignore`,
and the tools that need them read them from the same paths as before.

| Local path | What it is | Who needs it |
| --- | --- | --- |
| `stock_zdls/` | Zoom's stock effects | `build/extract_effect_db.py` (the Patch Editor's effect list), `build/analyze_stock_corpus.py`, the TapeHack template build |
| `firmware/` (except `wrap_for_dis6x.py`) | Zoom firmware images and what was extracted and disassembled from them | Firmware research only |
| `build/linesel_handlers.bin`, `build/air_knob3_edit.bin` | Edit-handler code from the stock LineSel and AIR effects | `build/linker.py`: builds that clone or use these handlers |
| `build/divf_rts.bin` | TI's float-divide runtime routine, as found in a stock effect | `build/linker.py`, only for objects that reference `__c6xabi_divf` |
| `build/c6xabi_attributes.bin` | Older fallback for objects without compiler-generated C6000 ABI metadata | `build/linker.py` |
| `build/TI_section_flags.bin` | TI toolchain section-flag bytes | Legacy linker support; not read by the current `build/linker.py` |
| `build/syncprobe*_handler*.bin` | Patched LineSel handler clones | The sync hardware probes |
| `build/exciter_outlv_edit.bin`, `build/lofidly_handlers.bin`, `ofd_zdl.txt` | Handler code and an `ofd6x` dump from the stock Exciter and LoFiDly effects | ABI notes |
| `docs/sprab89b.pdf`, `docs/sprui03f.pdf`, `docs/sprui04g.pdf` | TI manuals | Linked from [TI-PDF-NOTES.md](TI-PDF-NOTES.md) instead |

Installing and using the effects needs none of this: `dist/` and the NAM and
cab templates are complete. Builds that synthesize LineSel-cloned knob
handlers need the local LineSel handler blob. The divide routine and
ABI-attribute fallback are only needed when an input object does not supply
the relevant code or metadata itself.

## Getting them

- **Stock effects:** from your own Zoom Effect Manager installation, which
  carries the stock effects for the pedals it supports.
- **Firmware:** from Zoom's own updater for your pedal.
- **Handler blobs:** from the stock effects above; a tool that regenerates
  them from your own copies is still to be written. Until then, keep your
  existing copies.

## History

These files were published in earlier commits (they came with the upstream
toolchain and early research) and are still in the repository history. Removing
them from history rewrites every commit and affects everyone who has cloned or
forked it; that is a separate decision.

## Stock code inside the built effects

Builds that synthesize knob handlers clone and patch LineSel's stock edit
handler (`build/linesel_handlers.bin`). The linker also includes the divide
routine (`build/divf_rts.bin`) only when the object references it. Effects
using these pieces carry code from stock Zoom/TI components; untracking the
blobs does not change that. Replacing them with independently implemented
handlers (using the ABI in [EDIT-HANDLER-ABI.md](EDIT-HANDLER-ABI.md)) and
runtime support, then testing on the pedal, is the way to ship builds without
those code dependencies; see [TODO.md](../TODO.md).
