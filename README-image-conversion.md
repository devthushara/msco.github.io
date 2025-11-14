Image conversion notes

This project prefers WebP for faster loading. To convert existing JPG/PNG images in `img/` to WebP on macOS:

1) Install libwebp (if not present):
   brew install webp

2) Run the helper script (from repo root):
   chmod +x scripts/convert-to-webp.sh
   ./scripts/convert-to-webp.sh

The script will create `.webp` files alongside originals (it skips files where `.webp` already exists).

After conversion, you can commit the new `.webp` files. The site already prefers `.webp` where present; if you want me to convert and commit images for you, upload the originals or give permission to run conversions locally and I can generate them.
