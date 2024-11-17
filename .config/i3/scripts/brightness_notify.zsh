#!/usr/bin/env zsh

ICON_PATH=$HOME/.local/share/icons/brightness.svg
TIMEOUT=500

function main(){
    local bri=$(xbacklight -get);
    local dunst_tag=string:x-dunst-stack-tag:brightness  # shared location for brightness tag
    args=(-t $TIMEOUT -h $dunst_tag -h int:value:$bri Brightness "$bri%")
    [[ -f $ICON_PATH ]] && args+=(-i $ICON_PATH)
    notify-send $args
}

main $@
