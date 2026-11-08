#!/usr/bin/env bash
set -euo pipefail
choice="${1:-all}"

for label in dark light; do
  [ "$choice" = "$label" ] || [ "$choice" = all ] || continue
  rm -rf "$HOME/.themes/Tailya-${label^}"
done

gsettings reset org.gnome.shell.extensions.user-theme name 2>/dev/null || true
