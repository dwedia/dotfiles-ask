#!/bin/bash

LockScreenImage=~/Pictures/Wallpapers/lockscreen/batlock.png

if command -v hyprctl > /dev/null; then
  hyprctl dispatch exec "swaylock -f -c 000000 -i $LockScreenImage -l -s center"
else
  swaylock -f -c 000000 -i $LockScreenImage -l -s center
fi