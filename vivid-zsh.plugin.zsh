ANSI_RED="\e[0;31m"
ANSI_RESET="\e[0m"

themes_dir="${0:a:h}/themes"
theme_file="$themes_dir/$vivid_theme.zsh"

[ ! "$vivid_theme" ] && echo "${ANSI_RED}vivid_theme is not set!${ANSI_RESET}" && return 1

if [ ! -f "$theme_file" ]; then
  if ! export LS_COLORS="$(vivid generate $vivid_theme)"; then
    echo "${ANSI_RED}theme $vivid_theme does not exist!${ANSI_RESET}" 
    return 1
  else
    return 0
  fi
fi

source "$theme_file"
