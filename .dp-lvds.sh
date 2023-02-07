#!/bin/sh

lvds() {
xrandr --output VGA1 --off
xrandr --output DP1 --auto
xrandr --output HDMI1 --off
xrandr --output LVDS1 --auto --right-of DP1
doas sysctl machdep.lidaction=1
xwallpaper --stretch .wallpaper.jpg
setxkbmap -model thinkpad br
}

set -x
xrandr --query | grep "LVDS1 connected" && lvds
