# Espen i Asmo (1990)

Norwegian edutainment adventure, Turbo Pascal + MetaWINDOW, DOS.

## Run

    chmod +x run.sh && ./run.sh     # needs DOSBox Staging: brew install --cask dosbox-staging

`C/` is a reconstruction of the original hard-disk install from the two floppy
images (`disk1.ima`, `disk2.ima`, from archive.org/details/espen-i-asmo-v1.3).
`espen.conf` replays the original `START.BAT`:

    \METAWNDO\MARK              ; TSR bookmark
    SET GRDEV=/E:4              ; MetaWINDOW device: EGA/VGA 640x480 16 colour
    \METAWNDO\METAWNDO          ; MetaWINDOW resident graphics driver (INT 7Ch)
    ADVRTNOR ESPEN.ADV
    \METAWNDO\RELEASE

DOSBox's built-in mouse driver replaces MOUSE.COM. Cmd+F10 releases the mouse.

## Why the loose zip did not work

`ADVRTNOR.EXE` contains no graphics code. Every drawing call goes through the
INT 7Ch vector and checks for the MetaWINDOW TSR signature (0xFADE). Without
`METAWNDO.EXE` loaded, `InitGraphics` returns -1 and the game prints
`Feil nr. 1 i modul nr. 9, SKJERM`. The zip was missing `METAWNDO\`, `START.BAT`
and `GT\LIB` (SETUP.IFF / STD.RES).

`ESPEN/` and `START/` at the top level are the original zip contents, kept for
reference; `METAWNDO/` at the top level is an empty leftover from diagnosis and
can be deleted.

## Web remake

    python3 tools/serve.py          # http://127.0.0.1:8797/, caching disabled so edits show on reload
    node --test test/*.test.js      # engine tests, including a full winning walkthrough
