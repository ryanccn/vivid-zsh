#!/usr/bin/env bash
set -eo pipefail

ansi_dim="\033[2m"
ansi_reset="\033[0m"
ansi_green="\033[32m"

if [ -n "$NO_COLOR" ]; then
	ansi_dim=""
	ansi_reset=""
	ansi_green=""
fi

generate_dir="themes"

rm -rf "$generate_dir"
mkdir -p "$generate_dir"

vivid --version
for theme in $(vivid themes); do
	echo "export LS_COLORS=\"$(vivid generate "$theme")\"" > "$generate_dir/$theme.zsh" || exit 1
	echo -e "${ansi_dim}built $generate_dir/${ansi_reset}${ansi_green}$theme.zsh${ansi_reset}"
done
