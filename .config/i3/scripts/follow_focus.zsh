#!/usr/bin/env zsh

values=$(xdotool getactivewindow getwindowgeometry --shell | awk -F= '/WINDOW/{print $2}/WIDTH/||/HEIGHT/{print $2/2}')
xdotool mousemove --window ${(f)values}
