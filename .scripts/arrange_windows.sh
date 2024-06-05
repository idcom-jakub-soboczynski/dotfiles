#!/bin/bash

# Arrange windows in desktops
# Desktop 0
wmctrl -r "Google Chrome" -t 0
wmctrl -r "Google Chrome" -e 0,0,0,1920,1280

# Desktop 1
wmctrl -r "Slack" -t 1
wmctrl -r "Slack" -e 0,0,0,1920,1280

wmctrl -r "Mozilla Thunderbird" -t 1
wmctrl -r "Mozilla Thunderbird" -e 0,0,0,1920,1280

wmctrl -r "Alacritty" -t 1
wmctrl -r "Alacritty" -e 0,1920,0,1920,1280
