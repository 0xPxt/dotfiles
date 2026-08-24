#!/usr/bin/env bash
# Link the curated configs in this repo into ~/.config, one directory at a time.
#
# Only the directories listed in DIRS are ever touched. Application state that
# happens to live under ~/.config (google-chrome, Slack, dconf, pulse, ...) stays
# a real directory outside this repo, so `git clean -dfx` here can never reach it.
#
# Idempotent: re-running only refreshes the symlinks.
#
#   ./install.sh           link, skipping anything that already exists as a real directory
#   ./install.sh --adopt   move such a directory aside to a timestamped backup, then link

set -euo pipefail

REPO_CONFIG="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/.config"
DEST="${XDG_CONFIG_HOME:-$HOME/.config}"

DIRS=(
  alacritty
  ghostty
  i3
  i3blocks
  lvim
  nvim
  picom
  polybar
  rofi
  zathura
  zellij
)

adopt=0
[[ "${1:-}" == "--adopt" ]] && adopt=1

mkdir -p "$DEST"
skipped=0

for d in "${DIRS[@]}"; do
  src="$REPO_CONFIG/$d"
  dst="$DEST/$d"

  if [[ ! -d "$src" ]]; then
    printf '  skip     %-10s (not present in repo)\n' "$d"
    continue
  fi

  if [[ -L "$dst" ]]; then
    ln -sfn "$src" "$dst"
    printf '  relinked %s\n' "$d"
  elif [[ -e "$dst" ]]; then
    if (( adopt )); then
      backup="$dst.bak.$(date +%Y%m%d-%H%M%S)"
      mv "$dst" "$backup"
      ln -s "$src" "$dst"
      printf '  adopted  %-10s (previous contents -> %s)\n' "$d" "$backup"
    else
      printf '  SKIP     %-10s %s exists and is not a symlink; re-run with --adopt\n' "$d" "$dst" >&2
      skipped=$((skipped + 1))
    fi
  else
    ln -s "$src" "$dst"
    printf '  linked   %s\n' "$d"
  fi
done

if (( skipped )); then
  printf '\n%d director%s left untouched.\n' "$skipped" "$( ((skipped==1)) && echo y || echo ies)"
fi
