#!/usr/bin/env bash
set -euo pipefail
SRC="$(cd "$(dirname "$0")" && pwd)"
choice="${1:-dark}"

for label in dark light; do
  [ "$choice" = "$label" ] || [ "$choice" = both ] || continue
  name="Tailya-${label^}"
  dest="$HOME/.themes/$name/gnome-shell"
  mkdir -p "$dest"
  cp "$SRC/gnome-shells/$name/gnome-shell.css" "$dest/"
  echo "installed $name"
done

if [ "${2:-}" = "--apply" ]; then
  gsettings set org.gnome.shell.extensions.user-theme name "Tailya-${choice^}" 2>/dev/null || true
fi
