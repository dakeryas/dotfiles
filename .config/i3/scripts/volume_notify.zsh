#!/usr/bin/env zsh
#
ICON_PATH=~/.local/share/icons/volume.svg \
    READ_CMD="pactl get-sink-volume @DEFAULT_SINK@ | awk '/Vol/{print substr(\$5,0, length(\$5)-1)}'" \
    TAG=Volume \
    ${0:A:h}/brightness_notify.zsh
