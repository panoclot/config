#!/bin/sh
vol=$(wpctl get-volume @DEFAULT_SINK@ | awk '{print $2*100 $3}')
if [ -z $vol ]; then
	vol=$(echo "n/a")
fi
cpu=$(cat /proc/loadavg | awk '{print $1" "$2}')
time=$(date +"%m/%d %H:%M:%S")
mem=$(free -m | grep Mem | awk '{print $3 "M"}')
printf "$cpu | $mem | $vol | $time <\n"
sleep 1
