#!/bin/bash

xrandr --output DVI-I-1 --mode 1920x1080 --pos 0x0 --output DP-1 --mode 1920x1080 --pos 1920x0
feh --bg-scale ~/images/wallpaper-22025.jpg
xrdb ~/.Xdefaults
