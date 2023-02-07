#!/bin/sh

vga() {
xrandr --output VGA1 --rotate left --left-of DP1
xrandr --output DP1 --auto
xrandr --output HDMI1 --off
doas sysctl machdep.lidaction=0
xwallpaper --stretch .wallpaper.jpg
setxkbmap -model dell101 br
}

set -x
xrandr --query | grep "VGA1 connected" && vga 
