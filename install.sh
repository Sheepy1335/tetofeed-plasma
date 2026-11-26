#!/usr/bin/env bash
# Tetofeed — Plasma Style — install
set -euo pipefail
HERE=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
DST=${XDG_DATA_HOME:-$HOME/.local/share}/plasma/desktoptheme/Tetofeed
rm -rf "$DST"; mkdir -p "$DST"
cp -r "$HERE"/{metadata.json,plasmarc,widgets,dialogs,solid,translucent} "$DST"/
plasma-apply-desktoptheme Tetofeed

