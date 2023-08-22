#!/usr/bin/env bash

# File based on mathiasbynens and kentcdodds .macos files!
# mathiasbynens — https://github.com/mathiasbynens/dotfiles/blob/master/.macos
# kentcdodds — https://github.com/kentcdodds/dotfiles/blob/master/.macos

# Run without downloading:
# curl -s https://raw.githubusercontent.com/idcom-jakub-soboczynski/dotfiles/master/.bootstrap_linux/.3_settings.sh | bash

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.linux_idcom` has finished
while true; do
  sudo -n true
  sleep 60
  kill -0 "$$" || exit
done 2>/dev/null &

echo -e "\n"
echo "Setting the applet icon size..."
echo "------------------------------------------------"

gsettings set com.linuxmint.mintmenu applet-icon-size 22
gsettings set com.linuxmint.mintmenu.plugins.applications icon-size 22
echo -e "Applet icon size settings - set 🔥"

echo -e "\n"
echo "Setting what to show on desktop..."
echo "------------------------------------------------"

gsettings set com.linuxmint.mintmenu.plugins.places icon-size 16
gsettings set com.linuxmint.mintmenu.plugins.places show-computer true
gsettings set com.linuxmint.mintmenu.plugins.places show-desktop true
gsettings set com.linuxmint.mintmenu.plugins.places show-gtk-bookmarks false
gsettings set com.linuxmint.mintmenu.plugins.places show-home-folder true
gsettings set com.linuxmint.mintmenu.plugins.places show-network true
gsettings set com.linuxmint.mintmenu.plugins.places show-trash true
gsettings set com.linuxmint.mintmenu.plugins.places show-home-folder true
gsettings set com.linuxmint.mintmenu.plugins.places show-network true
gsettings set com.linuxmint.mintmenu.plugins.places show-trash true
echo -e "Show on desktop settings - set 🔥"

echo -e "\n"
echo "Setting Alt+Tab behavior..."
echo "------------------------------------------------"

gsettings set org.cinnamon alttab-minimized-aware true
gsettings set org.cinnamon alttab-switcher-delay 100
gsettings set org.cinnamon alttab-switcher-enforce-primary-monitor false
gsettings set org.cinnamon alttab-switcher-show-all-workspaces false
gsettings set org.cinnamon alttab-switcher-style 'icons'
echo -e "Alt+Tab behavior settings - set 🔥"

echo -e "\n"
echo "Setting date format..."
echo "------------------------------------------------"

gsettings set org.cinnamon date-format "YYYY-MM-DD"
echo -e "Date format settings - set 🔥"

echo -e "\n"
echo "Setting desktop effects..."
echo "------------------------------------------------"

gsettings set org.cinnamon desktop-effects true
gsettings set org.cinnamon desktop-effects-change-size true
gsettings set org.cinnamon desktop-effects-close "traditional"
gsettings set org.cinnamon desktop-effects-map "traditional"
gsettings set org.cinnamon desktop-effects-minimize "traditional"
gsettings set org.cinnamon desktop-effects-on-dialogs true
gsettings set org.cinnamon desktop-effects-on-menus true
gsettings set org.cinnamon desktop-effects-sizechange-effect "scale"
gsettings set org.cinnamon desktop-effects-sizechange-time 100
gsettings set org.cinnamon desktop-effects-sizechange-transition "easeInQuad"
gsettings set org.cinnamon desktop-effects-workspace true
echo -e "Desktop effects settings - set 🔥"

echo -e "\n"
echo "Setting clock..."
echo "------------------------------------------------"

gsettings set org.cinnamon.desktop.interface clock-show-date true
gsettings set org.cinnamon.desktop.interface clock-show-seconds false
gsettings set org.cinnamon.desktop.interface clock-use-24h true
gsettings set org.gnome.desktop.interface clock-format "24h"
gsettings set org.gnome.desktop.interface clock-show-date true
gsettings set org.gnome.desktop.interface clock-show-seconds false
gsettings set org.gnome.desktop.interface clock-show-weekday false
echo -e "Clock settings - set 🔥"

echo -e "\n"
echo "Setting cursor..."
echo "------------------------------------------------"

gsettings set org.cinnamon.desktop.interface cursor-blink true
gsettings set org.cinnamon.desktop.interface cursor-blink-time 1200
gsettings set org.cinnamon.desktop.interface cursor-blink-timeout 10
gsettings set org.cinnamon.desktop.interface cursor-size 24
gsettings set org.cinnamon.desktop.interface cursor-theme "Bibata-Modern-Classic"
gsettings set org.gnome.desktop.interface cursor-blink true
gsettings set org.gnome.desktop.interface cursor-blink-time 1200
gsettings set org.gnome.desktop.interface cursor-blink-timeout 10
gsettings set org.gnome.desktop.interface cursor-size 24
gsettings set org.gnome.desktop.interface cursor-theme "DMZ-White"
echo -e "Cursor settings - set 🔥"

echo -e "\n"
echo "Setting first day of week..."
echo "------------------------------------------------"

gsettings set org.cinnamon.desktop.interface first-day-of-week 7
echo -e "First day of week settings - set 🔥"

echo -e "\n"
echo "Setting gtk theme..."
echo "------------------------------------------------"

gsettings set org.cinnamon.desktop.interface gtk-theme "Adwaita-dark"
gsettings set org.cinnamon.desktop.wm.preferences theme "Mint-Y"
echo -e "Theme settings - set 🔥"

echo -e "\n"
echo "Setting icon theme..."
echo "------------------------------------------------"

gsettings set org.cinnamon.desktop.interface icon-theme "Mint-Y-Dark-Aqua"
gsettings set org.cinnamon.theme name "Mint-Y-Dark-Aqua"
echo -e "Icon theme settings - set 🔥"

echo -e "\n"
echo "Setting keybindings..."
echo "------------------------------------------------"

gsettings set org.cinnamon.desktop.keybindings magnifier-zoom-in "['<Alt><Super>equal']"
gsettings set org.cinnamon.desktop.keybindings magnifier-zoom-out "['<Alt><Super>minus']"
gsettings set org.cinnamon.desktop.keybindings.media-keys area-screenshot "['<Shift>Print']"
gsettings set org.cinnamon.desktop.keybindings.media-keys area-screenshot-clip "['<Control><Shift>Print']"
gsettings set org.cinnamon.desktop.keybindings.media-keys logout "['<Control><Alt>Delete']"
gsettings set org.cinnamon.desktop.keybindings.media-keys restart-cinnamon "['<Control><Alt>Escape']"
gsettings set org.cinnamon.desktop.keybindings.media-keys screenreader "['<Alt><Super>s']"
gsettings set org.cinnamon.desktop.keybindings.media-keys screensaver "['<Control><Alt>l', 'XF86ScreenSaver']"
gsettings set org.cinnamon.desktop.keybindings.media-keys screenshot "['Print']"
gsettings set org.cinnamon.desktop.keybindings.media-keys screenshot-clip "['<Control>Print']"
gsettings set org.cinnamon.desktop.keybindings.media-keys shutdown "['<Control><Alt>End', 'XF86PowerOff']"
gsettings set org.cinnamon.desktop.keybindings.media-keys terminal "['<Alt><Super>t']"
gsettings set org.cinnamon.desktop.keybindings.media-keys window-screenshot "['<Alt>Print']"
gsettings set org.cinnamon.desktop.keybindings.media-keys window-screenshot-clip "['<Control><Alt>Print']"
gsettings set org.cinnamon.desktop.keybindings.wm activate-window-menu "['<Alt>space']"
gsettings set org.cinnamon.desktop.keybindings.wm close "['<Alt>F4']"
gsettings set org.cinnamon.desktop.keybindings.wm maximize "['<Alt><Super>1']"
gsettings set org.cinnamon.desktop.keybindings.wm maximize-horizontally "[]"
gsettings set org.cinnamon.desktop.keybindings.wm maximize-vertically "[]"
gsettings set org.cinnamon.desktop.keybindings.wm minimize "[]"
gsettings set org.cinnamon.desktop.keybindings.wm move-to-center "['<Alt><Super>2']"
gsettings set org.cinnamon.desktop.keybindings.wm move-to-corner-ne "[]"
gsettings set org.cinnamon.desktop.keybindings.wm move-to-corner-nw "[]"
gsettings set org.cinnamon.desktop.keybindings.wm move-to-corner-se "[]"
gsettings set org.cinnamon.desktop.keybindings.wm move-to-corner-sw "[]"
gsettings set org.cinnamon.desktop.keybindings.wm move-to-monitor-down "['<Primary><Alt>Down']"
gsettings set org.cinnamon.desktop.keybindings.wm move-to-monitor-left "['<Primary><Alt>Left']"
gsettings set org.cinnamon.desktop.keybindings.wm move-to-monitor-right "['<Primary><Alt>Right']"
gsettings set org.cinnamon.desktop.keybindings.wm move-to-monitor-up "['<Primary><Alt>Up']"
gsettings set org.cinnamon.desktop.keybindings.wm move-to-side-e "[]"
gsettings set org.cinnamon.desktop.keybindings.wm move-to-side-n "[]"
gsettings set org.cinnamon.desktop.keybindings.wm move-to-side-s "[]"
gsettings set org.cinnamon.desktop.keybindings.wm move-to-side-w "[]"
gsettings set org.cinnamon.desktop.keybindings.wm move-to-workspace-1 "[]"
gsettings set org.cinnamon.desktop.keybindings.wm move-to-workspace-10 "[]"
gsettings set org.cinnamon.desktop.keybindings.wm move-to-workspace-11 "[]"
gsettings set org.cinnamon.desktop.keybindings.wm move-to-workspace-12 "[]"
gsettings set org.cinnamon.desktop.keybindings.wm move-to-workspace-2 "[]"
gsettings set org.cinnamon.desktop.keybindings.wm move-to-workspace-3 "[]"
gsettings set org.cinnamon.desktop.keybindings.wm move-to-workspace-4 "[]"
gsettings set org.cinnamon.desktop.keybindings.wm move-to-workspace-5 "[]"
gsettings set org.cinnamon.desktop.keybindings.wm move-to-workspace-6 "[]"
gsettings set org.cinnamon.desktop.keybindings.wm move-to-workspace-7 "[]"
gsettings set org.cinnamon.desktop.keybindings.wm move-to-workspace-8 "[]"
gsettings set org.cinnamon.desktop.keybindings.wm move-to-workspace-9 "[]"
gsettings set org.cinnamon.desktop.keybindings.wm move-to-workspace-down "['<Primary><Super>Down']"
gsettings set org.cinnamon.desktop.keybindings.wm move-to-workspace-left "['<Primary><Super>Left']"
gsettings set org.cinnamon.desktop.keybindings.wm move-to-workspace-new "[]"
gsettings set org.cinnamon.desktop.keybindings.wm move-to-workspace-right "['<Primary><Super>Right']"
gsettings set org.cinnamon.desktop.keybindings.wm move-to-workspace-up "['<Primary><Super>Up']"
gsettings set org.cinnamon.desktop.keybindings.wm panel-run-dialog "['<Alt>F2']"
gsettings set org.cinnamon.desktop.keybindings.wm push-snap-down "[]"
gsettings set org.cinnamon.desktop.keybindings.wm push-snap-left "[]"
gsettings set org.cinnamon.desktop.keybindings.wm push-snap-right "[]"
gsettings set org.cinnamon.desktop.keybindings.wm push-snap-up "[]"
gsettings set org.cinnamon.desktop.keybindings.wm push-tile-down "['<Alt><Super>Down']"
gsettings set org.cinnamon.desktop.keybindings.wm push-tile-left "['<Alt><Super>Left']"
gsettings set org.cinnamon.desktop.keybindings.wm push-tile-right "['<Alt><Super>Right']"
gsettings set org.cinnamon.desktop.keybindings.wm push-tile-up "['<Alt><Super>Up']"
gsettings set org.cinnamon.desktop.keybindings.wm show-desktop "['<Super>d']"
gsettings set org.cinnamon.desktop.keybindings.wm switch-group "['<Super>grave']"
gsettings set org.cinnamon.desktop.keybindings.wm switch-group-backward "['<Shift><Alt>Above_Tab']"
gsettings set org.cinnamon.desktop.keybindings.wm switch-monitor "['<Super>p', 'XF86Display']"
gsettings set org.cinnamon.desktop.keybindings.wm switch-panels "['<Primary><Shift>Tab']"
gsettings set org.cinnamon.desktop.keybindings.wm switch-panels-backward "[]"
gsettings set org.cinnamon.desktop.keybindings.wm switch-to-workspace-1 "['<Super>1']"
gsettings set org.cinnamon.desktop.keybindings.wm switch-to-workspace-10 "[]"
gsettings set org.cinnamon.desktop.keybindings.wm switch-to-workspace-11 "[]"
gsettings set org.cinnamon.desktop.keybindings.wm switch-to-workspace-12 "[]"
gsettings set org.cinnamon.desktop.keybindings.wm switch-to-workspace-2 "['<Super>2']"
gsettings set org.cinnamon.desktop.keybindings.wm switch-to-workspace-3 "['<Super>3']"
gsettings set org.cinnamon.desktop.keybindings.wm switch-to-workspace-4 "[]"
gsettings set org.cinnamon.desktop.keybindings.wm switch-to-workspace-5 "[]"
gsettings set org.cinnamon.desktop.keybindings.wm switch-to-workspace-6 "[]"
gsettings set org.cinnamon.desktop.keybindings.wm switch-to-workspace-7 "[]"
gsettings set org.cinnamon.desktop.keybindings.wm switch-to-workspace-8 "[]"
gsettings set org.cinnamon.desktop.keybindings.wm switch-to-workspace-9 "[]"
gsettings set org.cinnamon.desktop.keybindings.wm switch-to-workspace-down "['<Super>Down']"
gsettings set org.cinnamon.desktop.keybindings.wm switch-to-workspace-left "[]"
gsettings set org.cinnamon.desktop.keybindings.wm switch-to-workspace-right "[]"
gsettings set org.cinnamon.desktop.keybindings.wm switch-to-workspace-up "['<Super>Up']"
gsettings set org.cinnamon.desktop.keybindings.wm switch-windows "['<Primary>Tab']"
gsettings set org.cinnamon.desktop.keybindings.wm switch-windows-backward "[]"
gsettings set org.cinnamon.desktop.keybindings.wm tab-popup-cancel "[]"
gsettings set org.cinnamon.desktop.keybindings.wm tab-popup-select "[]"
gsettings set org.cinnamon.desktop.keybindings.wm toggle-above "[]"
gsettings set org.cinnamon.desktop.keybindings.wm toggle-fullscreen "[]"
gsettings set org.cinnamon.desktop.keybindings.wm toggle-maximized "['<Alt>F10']"
gsettings set org.cinnamon.desktop.keybindings.wm toggle-on-all-workspaces "[]"
gsettings set org.cinnamon.desktop.keybindings.wm toggle-recording "['<Control><Shift><Alt>r']"
gsettings set org.cinnamon.desktop.keybindings.wm toggle-shaded "[]"
gsettings set org.cinnamon.desktop.keybindings.wm unmaximize "['<Alt><Super>3']"
gsettings set org.gnome.desktop.wm.keybindings activate-window-menu "['<Alt>space']"
gsettings set org.gnome.desktop.wm.keybindings always-on-top "[]"
gsettings set org.gnome.desktop.wm.keybindings begin-move "['<Alt>F7']"
gsettings set org.gnome.desktop.wm.keybindings begin-resize "['<Alt>F8']"
gsettings set org.gnome.desktop.wm.keybindings close "['<Alt>F4']"
gsettings set org.gnome.desktop.wm.keybindings cycle-group "['<Alt>F6']"
gsettings set org.gnome.desktop.wm.keybindings cycle-group-backward "['<Shift><Alt>F6']"
gsettings set org.gnome.desktop.wm.keybindings cycle-panels "['<Control><Alt>Escape']"
gsettings set org.gnome.desktop.wm.keybindings cycle-panels-backward "['<Shift><Control><Alt>Escape']"
gsettings set org.gnome.desktop.wm.keybindings cycle-windows "['<Alt>Escape']"
gsettings set org.gnome.desktop.wm.keybindings cycle-windows-backward "['<Shift><Alt>Escape']"
gsettings set org.gnome.desktop.wm.keybindings lower "[]"
gsettings set org.gnome.desktop.wm.keybindings maximize "['<Super>Up']"
gsettings set org.gnome.desktop.wm.keybindings maximize-horizontally "[]"
gsettings set org.gnome.desktop.wm.keybindings maximize-vertically "[]"
gsettings set org.gnome.desktop.wm.keybindings minimize "['<Super>h']"
gsettings set org.gnome.desktop.wm.keybindings move-to-center "[]"
gsettings set org.gnome.desktop.wm.keybindings move-to-corner-ne "[]"
gsettings set org.gnome.desktop.wm.keybindings move-to-corner-nw "[]"
gsettings set org.gnome.desktop.wm.keybindings move-to-corner-se "[]"
gsettings set org.gnome.desktop.wm.keybindings move-to-corner-sw "[]"
gsettings set org.gnome.desktop.wm.keybindings move-to-monitor-down "['<Super><Shift>Down']"
gsettings set org.gnome.desktop.wm.keybindings move-to-monitor-left "['<Super><Shift>Left']"
gsettings set org.gnome.desktop.wm.keybindings move-to-monitor-right "['<Super><Shift>Right']"
gsettings set org.gnome.desktop.wm.keybindings move-to-monitor-up "['<Super><Shift>Up']"
gsettings set org.gnome.desktop.wm.keybindings move-to-side-e "[]"
gsettings set org.gnome.desktop.wm.keybindings move-to-side-n "[]"
gsettings set org.gnome.desktop.wm.keybindings move-to-side-s "[]"
gsettings set org.gnome.desktop.wm.keybindings move-to-side-w "[]"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-1 "['<Super><Shift>Home']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-10 "[]"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-11 "[]"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-12 "[]"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-2 "[]"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-3 "[]"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-4 "[]"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-5 "[]"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-6 "[]"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-7 "[]"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-8 "[]"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-9 "[]"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-down "['<Control><Shift><Alt>Down']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-last "['<Super><Shift>End']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-left "['<Super><Shift>Page_Up', '<Super><Shift><Alt>Left', '<Control><Shift><Alt>Left']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-right "['<Super><Shift>Page_Down', '<Super><Shift><Alt>Right', '<Control><Shift><Alt>Right']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-up "['<Control><Shift><Alt>Up']"
gsettings set org.gnome.desktop.wm.keybindings panel-main-menu "['<Alt>F1']"
gsettings set org.gnome.desktop.wm.keybindings panel-run-dialog "['<Alt>F2']"
gsettings set org.gnome.desktop.wm.keybindings raise "[]"
gsettings set org.gnome.desktop.wm.keybindings raise-or-lower "[]"
gsettings set org.gnome.desktop.wm.keybindings set-spew-mark "[]"
gsettings set org.gnome.desktop.wm.keybindings show-desktop "[]"
gsettings set org.gnome.desktop.wm.keybindings switch-applications "['<Super>Tab', '<Alt>Tab']"
gsettings set org.gnome.desktop.wm.keybindings switch-applications-backward "['<Shift><Super>Tab', '<Shift><Alt>Tab']"
gsettings set org.gnome.desktop.wm.keybindings switch-group "['<Super>Above_Tab', '<Alt>Above_Tab']"
gsettings set org.gnome.desktop.wm.keybindings switch-group-backward "['<Shift><Super>Above_Tab', '<Shift><Alt>Above_Tab']"
gsettings set org.gnome.desktop.wm.keybindings switch-input-source "['<Super>space', 'XF86Keyboard']"
gsettings set org.gnome.desktop.wm.keybindings switch-input-source-backward "['<Shift><Super>space', '<Shift>XF86Keyboard']"
gsettings set org.gnome.desktop.wm.keybindings switch-panels "['<Control><Alt>Tab']"
gsettings set org.gnome.desktop.wm.keybindings switch-panels-backward "['<Shift><Control><Alt>Tab']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-1 "['<Super>Home']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-10 "[]"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-11 "[]"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-12 "[]"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-2 "[]"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-3 "[]"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-4 "[]"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-5 "[]"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-6 "[]"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-7 "[]"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-8 "[]"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-9 "[]"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-down "['<Control><Alt>Down']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-last "['<Super>End']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-left "['<Super>Page_Up', '<Super><Alt>Left', '<Control><Alt>Left']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-right "['<Super>Page_Down', '<Super><Alt>Right', '<Control><Alt>Right']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-up "['<Control><Alt>Up']"
gsettings set org.gnome.desktop.wm.keybindings switch-windows "[]"
gsettings set org.gnome.desktop.wm.keybindings switch-windows-backward "[]"
gsettings set org.gnome.desktop.wm.keybindings toggle-above "[]"
gsettings set org.gnome.desktop.wm.keybindings toggle-fullscreen "[]"
gsettings set org.gnome.desktop.wm.keybindings toggle-maximized "['<Alt>F10']"
gsettings set org.gnome.desktop.wm.keybindings toggle-on-all-workspaces "[]"
gsettings set org.gnome.desktop.wm.keybindings toggle-shaded "[]"
gsettings set org.gnome.desktop.wm.keybindings unmaximize "['<Super>Down', '<Alt>F5']"
echo -e "Keybindings settings - set 🔥"

echo -e "\n"
echo "Setting notifications..."
echo "------------------------------------------------"

gsettings set org.cinnamon.desktop.notifications bottom-notifications false
gsettings set org.cinnamon.desktop.notifications display-notifications true
gsettings set org.cinnamon.desktop.notifications fade-on-mouseover true
gsettings set org.cinnamon.desktop.notifications fade-opacity 40
gsettings set org.cinnamon.desktop.notifications notification-duration 2
gsettings set org.cinnamon.desktop.notifications remove-old false
gsettings set org.cinnamon.desktop.notifications timeout 1800
echo -e "Notifications settings - set 🔥"

echo -e "\n"
echo "Setting keyboard..."
echo "------------------------------------------------"

gsettings set org.gnome.libgnomekbd.keyboard options "['grp\tgrp:win_space_toggle', 'terminate\tterminate:ctrl_alt_bksp', 'caps\tcaps:hyper', 'ctrl\tctrl:swap_lwin_lctl']"
gsettings set org.cinnamon.desktop.peripherals.keyboard delay 190
gsettings set org.cinnamon.desktop.peripherals.keyboard numlock-state true
gsettings set org.cinnamon.desktop.peripherals.keyboard remember-numlock-state true
gsettings set org.cinnamon.desktop.peripherals.keyboard repeat true
gsettings set org.cinnamon.desktop.peripherals.keyboard repeat-interval 19
echo -e "Keyboard settings - set 🔥"

echo -e "\n"
echo "Setting mouse..."
echo "------------------------------------------------"

gsettings set org.cinnamon.desktop.peripherals.mouse double-click 400
gsettings set org.cinnamon.desktop.peripherals.mouse drag-threshold 8
gsettings set org.cinnamon.desktop.peripherals.mouse left-handed false
gsettings set org.cinnamon.desktop.peripherals.mouse locate-pointer false
gsettings set org.cinnamon.desktop.peripherals.mouse middle-click-emulation false
gsettings set org.cinnamon.desktop.peripherals.mouse natural-scroll false
gsettings set org.cinnamon.desktop.peripherals.mouse speed 0.0
gsettings set org.gnome.desktop.peripherals.mouse double-click 400
gsettings set org.gnome.desktop.peripherals.mouse drag-threshold 8
gsettings set org.gnome.desktop.peripherals.mouse left-handed false
gsettings set org.gnome.desktop.peripherals.mouse middle-click-emulation false
gsettings set org.gnome.desktop.peripherals.mouse natural-scroll false
gsettings set org.gnome.desktop.peripherals.mouse speed 0.0
echo -e "Mouse settings - set 🔥"

echo -e "\n"
echo "Setting touchpad..."
echo "------------------------------------------------"

gsettings set org.cinnamon.desktop.peripherals.touchpad click-method "default"
gsettings set org.cinnamon.desktop.peripherals.touchpad disable-while-typing true
gsettings set org.cinnamon.desktop.peripherals.touchpad edge-scrolling-enabled false
gsettings set org.cinnamon.desktop.peripherals.touchpad left-handed "mouse"
gsettings set org.cinnamon.desktop.peripherals.touchpad middle-click-emulation false
gsettings set org.cinnamon.desktop.peripherals.touchpad natural-scroll true
gsettings set org.cinnamon.desktop.peripherals.touchpad send-events "enabled"
gsettings set org.cinnamon.desktop.peripherals.touchpad speed 0.0
gsettings set org.cinnamon.desktop.peripherals.touchpad tap-and-drag true
gsettings set org.cinnamon.desktop.peripherals.touchpad tap-to-click true
gsettings set org.cinnamon.desktop.peripherals.touchpad two-finger-scrolling-enabled true
echo -e "Touchpad settings - set 🔥"

echo -e "\n"
echo "Setting trackball..."
echo "------------------------------------------------"

gsettings set org.cinnamon.desktop.peripherals.trackball accel-profile "default"
gsettings set org.cinnamon.desktop.peripherals.trackball middle-click-emulation false
gsettings set org.cinnamon.desktop.peripherals.trackball scroll-wheel-emulation-button 0
echo -e "Trackball settings - set 🔥"

echo -e "\n"
echo "Setting window settings..."
echo "------------------------------------------------"

gsettings set org.cinnamon.desktop.wm.preferences button-layout "close,maximize,minimize:"
gsettings set org.cinnamon.desktop.wm.preferences action-double-click-titlebar "toggle-maximize"
gsettings set org.cinnamon.desktop.wm.preferences action-middle-click-titlebar "lower"
gsettings set org.cinnamon.desktop.wm.preferences action-right-click-titlebar "menu"
gsettings set org.gnome.desktop.wm.preferences button-layout ":minimize,maximize,close"
echo -e "Window settings - set 🔥"

echo -e "\n"
echo "Setting muffin..."
echo "------------------------------------------------"

gsettings set org.cinnamon.muffin attach-modal-dialogs false
gsettings set org.cinnamon.muffin auto-maximize false
gsettings set org.cinnamon.muffin background-transition "blend"
gsettings set org.cinnamon.muffin bring-windows-to-current-workspace false
gsettings set org.cinnamon.muffin center-new-windows false
gsettings set org.cinnamon.muffin check-alive-timeout 5000
gsettings set org.cinnamon.muffin draggable-border-width 10
gsettings set org.cinnamon.muffin dynamic-workspaces false
gsettings set org.cinnamon.muffin edge-tiling true
gsettings set org.cinnamon.muffin placement-mode "pointer"
gsettings set org.cinnamon.muffin tile-maximize true
gsettings set org.cinnamon.muffin unredirect-fullscreen-windows false
gsettings set org.cinnamon.muffin workspace-cycle false
gsettings set org.cinnamon.muffin workspaces-only-on-primary false
echo -e "Muffin settings - set 🔥"

echo -e "\n"
echo "Setting power settings..."
echo "------------------------------------------------"

gsettings set org.cinnamon.settings-daemon.plugins.power lid-close-ac-action "suspend"
gsettings set org.cinnamon.settings-daemon.plugins.power lid-close-battery-action "suspend"
gsettings set org.cinnamon.settings-daemon.plugins.power lid-close-suspend-with-external-monitor false
gsettings set org.cinnamon.settings-daemon.plugins.power lock-on-suspend true
gsettings set org.cinnamon.settings-daemon.plugins.power sleep-display-ac 1800
gsettings set org.cinnamon.settings-daemon.plugins.power sleep-display-battery 1800
gsettings set org.cinnamon.settings-daemon.plugins.power sleep-inactive-ac-timeout 0
gsettings set org.cinnamon.settings-daemon.plugins.power sleep-inactive-ac-type "suspend"
gsettings set org.cinnamon.settings-daemon.plugins.power sleep-inactive-battery-timeout 0
gsettings set org.cinnamon.settings-daemon.plugins.power sleep-inactive-battery-type "suspend"
echo -e "Power settings - set 🔥"

echo -e "\n"
echo "Setting terminal options..."
echo "------------------------------------------------"

gsettings set org.gnome.Terminal.Legacy.Settings confirm-close true
gsettings set org.gnome.Terminal.Legacy.Settings new-tab-position "last"
gsettings set org.gnome.Terminal.Legacy.Settings new-terminal-mode "window"
gsettings set org.gnome.Terminal.Legacy.Settings shortcuts-enabled true
gsettings set org.gnome.Terminal.Legacy.Settings tab-policy "automatic"
gsettings set org.gnome.Terminal.Legacy.Settings tab-position "top"
gsettings set org.gnome.Terminal.Legacy.Settings theme-variant "dark"
gsettings set org.gnome.Terminal.Legacy.Keybindings:/org/gnome/terminal/legacy/keybindings/ close-tab "<Primary>w"
gsettings set org.gnome.Terminal.Legacy.Keybindings:/org/gnome/terminal/legacy/keybindings/ close-window "<Primary>q"
gsettings set org.gnome.Terminal.Legacy.Keybindings:/org/gnome/terminal/legacy/keybindings/ copy "<Control><Shift>c"
gsettings set org.gnome.Terminal.Legacy.Keybindings:/org/gnome/terminal/legacy/keybindings/ copy-html "disabled"
gsettings set org.gnome.Terminal.Legacy.Keybindings:/org/gnome/terminal/legacy/keybindings/ detach-tab "disabled"
gsettings set org.gnome.Terminal.Legacy.Keybindings:/org/gnome/terminal/legacy/keybindings/ export "disabled"
gsettings set org.gnome.Terminal.Legacy.Keybindings:/org/gnome/terminal/legacy/keybindings/ find "<Control><Shift>F"
gsettings set org.gnome.Terminal.Legacy.Keybindings:/org/gnome/terminal/legacy/keybindings/ find-clear "<Control><Shift>J"
gsettings set org.gnome.Terminal.Legacy.Keybindings:/org/gnome/terminal/legacy/keybindings/ find-next "<Control><Shift>G"
gsettings set org.gnome.Terminal.Legacy.Keybindings:/org/gnome/terminal/legacy/keybindings/ find-previous "<Control><Shift>H"
gsettings set org.gnome.Terminal.Legacy.Keybindings:/org/gnome/terminal/legacy/keybindings/ full-screen "F11"
gsettings set org.gnome.Terminal.Legacy.Keybindings:/org/gnome/terminal/legacy/keybindings/ header-menu "disabled"
gsettings set org.gnome.Terminal.Legacy.Keybindings:/org/gnome/terminal/legacy/keybindings/ help "disabled"
gsettings set org.gnome.Terminal.Legacy.Keybindings:/org/gnome/terminal/legacy/keybindings/ move-tab-left "<Control><Shift>Page_Up"
gsettings set org.gnome.Terminal.Legacy.Keybindings:/org/gnome/terminal/legacy/keybindings/ move-tab-right "<Control><Shift>Page_Down"
gsettings set org.gnome.Terminal.Legacy.Keybindings:/org/gnome/terminal/legacy/keybindings/ new-tab "<Primary>t"
gsettings set org.gnome.Terminal.Legacy.Keybindings:/org/gnome/terminal/legacy/keybindings/ new-window "<Control><Shift>n"
gsettings set org.gnome.Terminal.Legacy.Keybindings:/org/gnome/terminal/legacy/keybindings/ next-tab "<Control>Page_Down"
gsettings set org.gnome.Terminal.Legacy.Keybindings:/org/gnome/terminal/legacy/keybindings/ paste "<Primary>v"
gsettings set org.gnome.Terminal.Legacy.Keybindings:/org/gnome/terminal/legacy/keybindings/ preferences "<Primary>comma"
gsettings set org.gnome.Terminal.Legacy.Keybindings:/org/gnome/terminal/legacy/keybindings/ prev-tab "<Control>Page_Up"
gsettings set org.gnome.Terminal.Legacy.Keybindings:/org/gnome/terminal/legacy/keybindings/ print "disabled"
gsettings set org.gnome.Terminal.Legacy.Keybindings:/org/gnome/terminal/legacy/keybindings/ read-only "disabled"
gsettings set org.gnome.Terminal.Legacy.Keybindings:/org/gnome/terminal/legacy/keybindings/ reset "disabled"
gsettings set org.gnome.Terminal.Legacy.Keybindings:/org/gnome/terminal/legacy/keybindings/ reset-and-clear "disabled"
gsettings set org.gnome.Terminal.Legacy.Keybindings:/org/gnome/terminal/legacy/keybindings/ save-contents "disabled"
gsettings set org.gnome.Terminal.Legacy.Keybindings:/org/gnome/terminal/legacy/keybindings/ select-all "disabled"
gsettings set org.gnome.Terminal.Legacy.Keybindings:/org/gnome/terminal/legacy/keybindings/ switch-to-tab-1 "<Alt>1"
gsettings set org.gnome.Terminal.Legacy.Keybindings:/org/gnome/terminal/legacy/keybindings/ switch-to-tab-10 "<Alt>0"
gsettings set org.gnome.Terminal.Legacy.Keybindings:/org/gnome/terminal/legacy/keybindings/ switch-to-tab-11 "disabled"
gsettings set org.gnome.Terminal.Legacy.Keybindings:/org/gnome/terminal/legacy/keybindings/ switch-to-tab-12 "disabled"
gsettings set org.gnome.Terminal.Legacy.Keybindings:/org/gnome/terminal/legacy/keybindings/ switch-to-tab-13 "disabled"
gsettings set org.gnome.Terminal.Legacy.Keybindings:/org/gnome/terminal/legacy/keybindings/ switch-to-tab-14 "disabled"
gsettings set org.gnome.Terminal.Legacy.Keybindings:/org/gnome/terminal/legacy/keybindings/ switch-to-tab-15 "disabled"
gsettings set org.gnome.Terminal.Legacy.Keybindings:/org/gnome/terminal/legacy/keybindings/ switch-to-tab-16 "disabled"
gsettings set org.gnome.Terminal.Legacy.Keybindings:/org/gnome/terminal/legacy/keybindings/ switch-to-tab-17 "disabled"
gsettings set org.gnome.Terminal.Legacy.Keybindings:/org/gnome/terminal/legacy/keybindings/ switch-to-tab-18 "disabled"
gsettings set org.gnome.Terminal.Legacy.Keybindings:/org/gnome/terminal/legacy/keybindings/ switch-to-tab-19 "disabled"
gsettings set org.gnome.Terminal.Legacy.Keybindings:/org/gnome/terminal/legacy/keybindings/ switch-to-tab-2 "<Alt>2"
gsettings set org.gnome.Terminal.Legacy.Keybindings:/org/gnome/terminal/legacy/keybindings/ switch-to-tab-20 "disabled"
gsettings set org.gnome.Terminal.Legacy.Keybindings:/org/gnome/terminal/legacy/keybindings/ switch-to-tab-21 "disabled"
gsettings set org.gnome.Terminal.Legacy.Keybindings:/org/gnome/terminal/legacy/keybindings/ switch-to-tab-22 "disabled"
gsettings set org.gnome.Terminal.Legacy.Keybindings:/org/gnome/terminal/legacy/keybindings/ switch-to-tab-23 "disabled"
gsettings set org.gnome.Terminal.Legacy.Keybindings:/org/gnome/terminal/legacy/keybindings/ switch-to-tab-24 "disabled"
gsettings set org.gnome.Terminal.Legacy.Keybindings:/org/gnome/terminal/legacy/keybindings/ switch-to-tab-25 "disabled"
gsettings set org.gnome.Terminal.Legacy.Keybindings:/org/gnome/terminal/legacy/keybindings/ switch-to-tab-26 "disabled"
gsettings set org.gnome.Terminal.Legacy.Keybindings:/org/gnome/terminal/legacy/keybindings/ switch-to-tab-27 "disabled"
gsettings set org.gnome.Terminal.Legacy.Keybindings:/org/gnome/terminal/legacy/keybindings/ switch-to-tab-28 "disabled"
gsettings set org.gnome.Terminal.Legacy.Keybindings:/org/gnome/terminal/legacy/keybindings/ switch-to-tab-29 "disabled"
gsettings set org.gnome.Terminal.Legacy.Keybindings:/org/gnome/terminal/legacy/keybindings/ switch-to-tab-3 "<Alt>3"
gsettings set org.gnome.Terminal.Legacy.Keybindings:/org/gnome/terminal/legacy/keybindings/ switch-to-tab-30 "disabled"
gsettings set org.gnome.Terminal.Legacy.Keybindings:/org/gnome/terminal/legacy/keybindings/ switch-to-tab-31 "disabled"
gsettings set org.gnome.Terminal.Legacy.Keybindings:/org/gnome/terminal/legacy/keybindings/ switch-to-tab-32 "disabled"
gsettings set org.gnome.Terminal.Legacy.Keybindings:/org/gnome/terminal/legacy/keybindings/ switch-to-tab-33 "disabled"
gsettings set org.gnome.Terminal.Legacy.Keybindings:/org/gnome/terminal/legacy/keybindings/ switch-to-tab-34 "disabled"
gsettings set org.gnome.Terminal.Legacy.Keybindings:/org/gnome/terminal/legacy/keybindings/ switch-to-tab-35 "disabled"
gsettings set org.gnome.Terminal.Legacy.Keybindings:/org/gnome/terminal/legacy/keybindings/ switch-to-tab-4 "<Alt>4"
gsettings set org.gnome.Terminal.Legacy.Keybindings:/org/gnome/terminal/legacy/keybindings/ switch-to-tab-5 "<Alt>5"
gsettings set org.gnome.Terminal.Legacy.Keybindings:/org/gnome/terminal/legacy/keybindings/ switch-to-tab-6 "<Alt>6"
gsettings set org.gnome.Terminal.Legacy.Keybindings:/org/gnome/terminal/legacy/keybindings/ switch-to-tab-7 "<Alt>7"
gsettings set org.gnome.Terminal.Legacy.Keybindings:/org/gnome/terminal/legacy/keybindings/ switch-to-tab-8 "<Alt>8"
gsettings set org.gnome.Terminal.Legacy.Keybindings:/org/gnome/terminal/legacy/keybindings/ switch-to-tab-9 "<Alt>9"
gsettings set org.gnome.Terminal.Legacy.Keybindings:/org/gnome/terminal/legacy/keybindings/ switch-to-tab-last "disabled"
gsettings set org.gnome.Terminal.Legacy.Keybindings:/org/gnome/terminal/legacy/keybindings/ toggle-menubar "disabled"
gsettings set org.gnome.Terminal.Legacy.Keybindings:/org/gnome/terminal/legacy/keybindings/ zoom-in "<Control>plus"
gsettings set org.gnome.Terminal.Legacy.Keybindings:/org/gnome/terminal/legacy/keybindings/ zoom-normal "<Control>0"
gsettings set org.gnome.Terminal.Legacy.Keybindings:/org/gnome/terminal/legacy/keybindings/ zoom-out "<Control>minus"
echo -e "Terminal settings - set 🔥"

echo -e "\n"
echo "Setting editor preferences..."
echo "------------------------------------------------"

gsettings set org.x.editor.preferences.editor auto-indent false
gsettings set org.x.editor.preferences.editor auto-save false
gsettings set org.x.editor.preferences.editor auto-save-interval 10
gsettings set org.x.editor.preferences.editor bracket-matching false
gsettings set org.x.editor.preferences.editor create-backup-copy false
gsettings set org.x.editor.preferences.editor display-line-numbers false
gsettings set org.x.editor.preferences.editor display-right-margin false
gsettings set org.x.editor.preferences.editor draw-whitespace false
gsettings set org.x.editor.preferences.editor draw-whitespace-inside false
gsettings set org.x.editor.preferences.editor draw-whitespace-leading false
gsettings set org.x.editor.preferences.editor draw-whitespace-newline false
gsettings set org.x.editor.preferences.editor draw-whitespace-trailing false
gsettings set org.x.editor.preferences.editor editor-font "Monospace 12"
gsettings set org.x.editor.preferences.editor ensure-trailing-newline true
gsettings set org.x.editor.preferences.editor highlight-current-line false
gsettings set org.x.editor.preferences.editor insert-spaces true
gsettings set org.x.editor.preferences.editor max-undo-actions 2000
gsettings set org.x.editor.preferences.editor prefer-dark-theme false
gsettings set org.x.editor.preferences.editor restore-cursor-position true
gsettings set org.x.editor.preferences.editor right-margin-position 120
gsettings set org.x.editor.preferences.editor scheme "tango"
gsettings set org.x.editor.preferences.editor search-highlighting true
gsettings set org.x.editor.preferences.editor smart-home-end "after"
gsettings set org.x.editor.preferences.editor syntax-highlighting true
gsettings set org.x.editor.preferences.editor tabs-size 4
gsettings set org.x.editor.preferences.editor use-default-font true
gsettings set org.x.editor.preferences.editor wrap-mode "word"
gsettings set org.x.editor.preferences.editor writable-vfs-schemes "['dav', 'davs', 'ftp', 'sftp', 'smb', 'ssh']"
echo -e "Editor settings - set 🔥"

echo -e "\n"
echo "Setting onboard settings..."
echo "------------------------------------------------"

gsettings set org.onboard key-label-overrides "['RWIN:Super:', 'LWIN:Super:']"
gsettings set org.onboard.theme-settings key-label-overrides "['RWIN:Super:', 'LWIN:Super:']"
echo -e "Onboard settings - set 🔥"
