#!/usr/bin/env bash
set -e
CHROME=/opt/playwright/chromium-1232/chrome-linux64/chrome
DIR="$(cd "$(dirname "$0")" && pwd)"
OUT="$DIR/out"
mkdir -p "$OUT"
FILE="file://$DIR/banner.html"

shot () {
  # $1 = query, $2 = width, $3 = height, $4 = scale, $5 = output
  "$CHROME" --headless=new --no-sandbox --hide-scrollbars \
    --force-device-scale-factor="$4" \
    --window-size="$2","$3" \
    --default-background-color=00000000 \
    --screenshot="$OUT/$5" \
    "$FILE?$1" >/dev/null 2>&1
  echo "  -> $5"
}

echo "Rendering full banner..."
shot "tile=full" 3240 1080 1 "alias_banner_full.png"

echo "Rendering split tiles (2x, 2160x2160 each)..."
shot "tile=0" 1080 1080 2 "alias_tile_1_left.png"
shot "tile=1" 1080 1080 2 "alias_tile_2_center.png"
shot "tile=2" 1080 1080 2 "alias_tile_3_right.png"

echo "Rendering preview with split guides..."
shot "tile=full&guides=1" 3240 1080 1 "alias_banner_guides.png"

echo "Done. Files in $OUT:"
ls -la "$OUT"
