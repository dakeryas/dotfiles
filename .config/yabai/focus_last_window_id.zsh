#!/usr/bin/env zsh

function last_window_id(){
    local app=$1
    id=$(yabai -m query --windows | jq -e "map(select(.app==\"$app\")) | .[0] | .id") && echo $id
}

function focus_last_window_id(){
    local app=$1
    id=$(last_window_id $app) && yabai -m window --focus $id
}

focus_last_window_id $@
