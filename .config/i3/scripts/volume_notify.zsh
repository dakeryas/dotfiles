#!/usr/bin/env zsh

icon=~/.local/share/icons/volume.svg
mute=$(pactl get-sink-mute @DEFAULT_SINK@)
[[ $mute == *yes* ]] && icon=~/.local/share/icons/silent.svg

percentage=$(pactl get-sink-volume @DEFAULT_SINK@ | awk '/Vol/{print substr($5,0, length($5)-1)}')

ICON_PATH=$icon \
    TAG=Volume \
    ${0:A:h}/percentage_notify.zsh $percentage
