themes_dir="${0:a:h}/themes"

[ ! $vivid_theme ] && echo "vivid_theme is not set!" && return 1

theme_file="$themes_dir/$vivid_theme.zsh"
[ ! -f $theme_file ] && echo "theme $vivid_theme could not be found!" && return 1

source "$theme_file"
