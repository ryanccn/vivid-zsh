#!/usr/bin/env bash
set -euo pipefail

generate_dir="themes"

rm -rf "$generate_dir"
mkdir -p "$generate_dir"

for theme in $(vivid themes); do
    echo "export LS_COLORS=\"$(vivid generate "$theme")\"" > "$generate_dir/$theme.zsh"
done
