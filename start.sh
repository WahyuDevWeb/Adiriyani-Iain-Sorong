#!/usr/bin/env sh
set -eu
cd "$(dirname "$0")"
if command -v node >/dev/null 2>&1; then
  (sleep 2; if command -v xdg-open >/dev/null 2>&1; then xdg-open http://localhost:3162 >/dev/null 2>&1 || true; elif command -v open >/dev/null 2>&1; then open http://localhost:3162 >/dev/null 2>&1 || true; fi) &
  exec node server.js
else
  echo "Node.js tidak ditemukan. Membuka versi statis tanpa server."
  if command -v xdg-open >/dev/null 2>&1; then xdg-open "$PWD/public/index.html"; elif command -v open >/dev/null 2>&1; then open "$PWD/public/index.html"; else echo "Buka file public/index.html di browser."; fi
fi
