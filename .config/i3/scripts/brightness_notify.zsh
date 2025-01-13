#!/usr/bin/env zsh

function read_rel_brightness(){
    if (( ${+commands[xbacklight]} )); then
        xbacklight -get
    elif (( ${+commands[brightnessctl]} ));then
        brightnessctl -m | cut -d, -f4 | tr -d '%'
    fi
}

ICON_PATH=~/.local/share/icons/brightness.svg \
    TAG=Brightness \
    ${0:A:h}/percentage_notify.zsh $(read_rel_brightness)
