#!/usr/bin/env zsh

: ${TIMEOUT:=500}

function main(){
    local val=$1
    local dunst_tag=string:x-dunst-stack-tag:$TAG  # shared location for given tag
    args=(-t $TIMEOUT -h $dunst_tag -h int:value:$val $TAG "$val%")
    [[ -f $ICON_PATH ]] && args+=(-i $ICON_PATH)
    notify-send $args
}

main $@
