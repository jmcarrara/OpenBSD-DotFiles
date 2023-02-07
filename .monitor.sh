#!/bin/sh

lvds() {
xrandr --output LVDS1 --auto --dpi 96
xrandr --output VGA1 --off
xrandr --output DP1 --off
xrandr --output HDMI1 --off
doas sysctl machdep.lidaction=1
xwallpaper --stretch .wallpaper.jpg
setxkbmap -model thinkpad br
}

vga() {
xrandr --output LVDS1 --off
xrandr --output VGA1 --auto --dpi 96
xrandr --output DP1 --off
xrandr --output HDMI1 --off
doas sysctl machdep.lidaction=0
xwallpaper --stretch .wallpaper.jpg
setxkbmap -model dell101 br
}

dp() {
xrandr --output LVDS1 --off
xrandr --output VGA1 --off
xrandr --output DP1 --auto --dpi 96
xrandr --output HDMI1 --off
doas sysctl machdep.lidaction=0
xwallpaper --stretch .wallpaper.jpg
setxkbmap -model dell101 br
}

hdmi() {
xrandr --output LVDS1 --off
xrandr --output VGA1 --off
xrandr --output DP1 --off
xrandr --output HDMI1 --auto --dpi 96
doas sysctl machdep.lidaction=0
xwallpaper --stretch .wallpaper.jpg
setxkbmap -model dell101 br
}

set -x
xrandr --query | grep "LVDS1 connected" && lvds
xrandr --query | grep "VGA1 connected" && vga 
xrandr --query | grep "DP1 connected" && dp
xrandr --query | grep "HDMI1 connected" && hdmi
