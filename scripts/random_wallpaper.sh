#!/bin/sh
wallpaper=$(ls ~/pix/wallpapers | sort -R | head -n 1)
wal -e -i "$HOME/pix/wallpapers/$wallpaper" -b "#000000" --saturate 1 -n
echo $wallpaper > ~/.local/currentwallpaper
kill $(pidof swaybg)
[ $wallpaper -z ] || swaybg -i ~/pix/wallpapers/$wallpaper -m fill
