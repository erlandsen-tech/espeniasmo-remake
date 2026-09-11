#!/bin/bash
# Espen i Asmo (1990) under DOSBox Staging. Layout in C/ mirrors the original hard-disk install.
exec "/Applications/DOSBox Staging.app/Contents/MacOS/dosbox" -conf "$(dirname "$0")/espen.conf"
