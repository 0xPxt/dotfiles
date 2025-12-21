#!/bin/bash

# Check if the external monitor is connected
if xrandr | grep "HDMI-1 connected"; then
    # External monitor is connected, turn off laptop screen and set HDMI-1 as primary
    xrandr --output HDMI-1 --primary --auto --output eDP-1 --off
else
    # No external monitor, keep the laptop screen on
    xrandr --output eDP-1 --auto
fi

# Set wallpaper after monitor configuration
sleep 1
feh --bg-fill --randomize /home/pxt/Pictures/Wallpapers/*

# Restart Polybar to adapt to new monitor dimensions
~/.config/polybar/launch.sh

