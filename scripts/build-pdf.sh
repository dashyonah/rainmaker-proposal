#!/usr/bin/env bash
# Render deck/index.html to deck/elishah-partner-network.pdf with headless Chrome.
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
CHROME="${CHROME:-google-chrome}"
"$CHROME" --headless=new --disable-gpu --no-pdf-header-footer \
  --virtual-time-budget=15000 --run-all-compositor-stages-before-draw \
  --print-to-pdf="$ROOT/deck/elishah-partner-network.pdf" \
  "file://$ROOT/deck/index.html"
