#!/usr/bin/env bash
# Convert common image formats in ./img to WebP (lossy) using cwebp.
# Installs: brew install webp (on macOS)

set -euo pipefail
cd "$(dirname "$0")/.."
mkdir -p img

# Convert JPG/JPEG/PNG to .webp if .webp doesn't already exist
find img -type f \( -iname '*.jpg' -o -iname '*.jpeg' -o -iname '*.png' \) | while read -r src; do
  dst="${src%.*}.webp"
  if [ -f "$dst" ]; then
    echo "Skipping existing: $dst"
    continue
  fi
  echo "Converting $src -> $dst"
  cwebp -q 80 "$src" -o "$dst" >/dev/null 2>&1 || {
    echo "cwebp failed for $src" >&2
  }
done

echo "Done. Review /img for new .webp files." 
