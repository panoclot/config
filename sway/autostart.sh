#!/bin/sh
kill $(pidof pipewire)
swaybg -i ~/pix/wallpapers/$(echo "$(<~/.local/currentwallpaper)") -m fill &
pipewire &
