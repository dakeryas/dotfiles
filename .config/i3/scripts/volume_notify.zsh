#!/usr/bin/env zsh
#
ICON_PATH=~/.local/share/icons/volume.svg \
    READ_CMD="pactl get-sink-volume @DEFAULT_SINK@ | awk '/Vol/{print \$5}'" \
    TAG=Volume \
    ${0:A:h}/brightness_notify.zsh
