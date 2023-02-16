#!/usr/bin/env zsh

function get_excess_spaces(){
    local target=$1
    echo $(yabai -m query --spaces | jq "length - $target")
}

function get_last_space(){
    local display=$1
    echo $(yabai -m query --spaces --display $display | jq '.[-1].index')
}

function destroy_excess_spaces(){
    local target=$1
    local display=$2
    [ -z $display ] && display=1
    excess=$(get_excess_spaces $target)
    while (( excess > 0 )); do
        yabai -m space --destroy $(get_last_space $display)
        excess=$(get_excess_spaces $target)
    done
}

destroy_excess_spaces $@
