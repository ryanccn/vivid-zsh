#!/bin/bash

mkdir -p "plugins"

for theme in $(vivid themes); do
    echo "export LS_COLORS=\"$(vivid generate $theme)\"" > "plugins/vivid-$theme.zsh"
done
