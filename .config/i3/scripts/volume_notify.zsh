#!/usr/bin/env zsh

icon=~/.local/share/icons/volume.svg
mute=$(pactl get-sink-mute @DEFAULT_SINK@)
[[ $mute == *yes* ]] && icon=~/.local/share/icons/silent.svg

ICON_PATH=$icon \
    READ_CMD="pactl get-sink-volume @DEFAULT_SINK@ | awk '/Vol/{print substr(\$5,0, length(\$5)-1)}'" \
    TAG=Volume \
    ${0:A:h}/brightness_notify.zsh
