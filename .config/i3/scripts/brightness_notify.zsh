#!/usr/bin/env zsh

: ${ICON_PATH:="$HOME/.local/share/icons/brightness.svg"}
: ${TIMEOUT:=500}
: ${TAG:=Brightness}
: ${READ_CMD:="xbacklight -get"}

function main(){
    local val=$(eval $READ_CMD);
    local dunst_tag=string:x-dunst-stack-tag:$TAG  # shared location for given tag
    args=(-t $TIMEOUT -h $dunst_tag -h int:value:$val $TAG "$val%")
    [[ -f $ICON_PATH ]] && args+=(-i $ICON_PATH)
    notify-send $args
}

main $@
