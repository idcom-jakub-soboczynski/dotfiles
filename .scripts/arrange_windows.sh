#!/bin/bash

move_and_resize_window() {
  local window_class=$1
  local window_id=$(echo $(wmctrl -lx | grep "$1" | awk '{print $1}'))
  local desktop=$2
  local geometry=$3 # Format: gravity,x,y,width,height

  if [ -n "$window_id" ]; then
    echo "Moving and resizing $1"
    wmctrl -ir "$window_id" -b remove,maximized_vert,maximized_horz
    wmctrl -ir "$window_id" -t "$desktop"
    wmctrl -ir "$window_id" -e "$geometry"
    wmctrl -ir "$window_id" -b add,maximized_vert,maximized_horz
  else
    echo "ID of $1 not found."
  fi
}

# Desktop Left
## Google Chrome
move_and_resize_window "google-chrome.Google-chrome" 0 "0,0,0,1920,1280"

## Webstorm
move_and_resize_window "jetbrains-webstorm.jetbrains-webstorm" 0 "0,1920,0,1920,1280"

## Visual Studio Code
move_and_resize_window "code.Code" 0 0,1920,0,1920,1280

# Desktop Right
## Slack
move_and_resize_window "slack.Slack" 1 "0,0,0,1920,1280"

## Mozilla Thunderbird
move_and_resize_window "Mail.thunderbird" 1 "0,0,0,1920,1280"

## Alacritty
move_and_resize_window "Alacritty.Alacritty" 1 "0,1920,0,1920,1280"

## Warp
move_and_resize_window "dev.warp.Warp.dev.warp.Warp" 1 "0,1920,0,1920,1280"
