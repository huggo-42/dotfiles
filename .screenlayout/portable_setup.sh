#!/bin/sh

if [ `hostname` = "pop-os" ]; then
    xrandr --output HDMI-A-0 --off 
fi
