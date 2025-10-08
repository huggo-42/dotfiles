#!/bin/sh

if [ `hostname` = "pop-os" ]; then
    xrandr --output HDMI-A-0 --auto --left-of eDP
fi
