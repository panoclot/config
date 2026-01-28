#!/bin/sh
wallpaper=$(ls ~/pix/wallpapers | fuzzel -I -d)
if [ -z $wallpaper ]; then
	exit
else
	wal -e -i "$HOME/pix/wallpapers/$wallpaper" -b "#000000" --saturate 1 -n
	echo $wallpaper > ~/.local/currentwallpaper
	kill $(pidof swaybg)
	swaybg -i ~/pix/wallpapers/$wallpaper -m fill
fi
