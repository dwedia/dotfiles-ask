#!/bin/bash

# Options
shutdown="⏻ Shutdown"
reboot="🔁 Reboot"
lock="🔒 Lock"
logout="🚪 Logout"
cancel="❌ Cancel"

# Rofi CMD
chosen="$(printf "%s\n" "$lock" "$logout" "$reboot" "$shutdown" "$cancel" | rofi -theme ~/.config/rofi/powerMenu.rasi -dmenu -i -p "Power Menu")"

case "$chosen" in
    "$shutdown") systemctl poweroff ;;
    "$reboot") systemctl reboot ;;
    "$lock") 
        if command -v i3lock > /dev/null; then
            i3lock
        elif command -v betterlockscreen > /dev/null; then
            betterlockscreen -l
        elif command -v swaylock > /dev/null; then
            ~/.local/scripts/lockScreen.sh
        else
            notify-send "Lock command not found"
        fi
        ;;
    "$logout")
        if [[ "$DESKTOP_SESSION" == "bspwm" ]]; then
            bspc quit
        elif [[ "$DESKTOP_SESSION" == "i3" ]]; then
            i3-msg exit
        elif [[ "$DESKTOP_SESSION" == "plasma" ]]; then
            qdbus org.kde.ksmserver /KSMServer logout 0 0 0
        elif [[ "$DESKTOP_SESSION" == "hyprland" ]]; then
            hyprctl dispatch exit
        else
            pkill -KILL -u "$USER"
        fi
        ;;
    *) exit 0 ;;
esac