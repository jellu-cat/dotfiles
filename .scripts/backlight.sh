#!/bin/bash

DIR="/sys/class/backlight/intel_backlight/"
MAX=$(cat "${DIR}max_brightness")
MIN=10
current=$(cat "${DIR}brightness")
new="$current"

if [ "$2" != "" ]; then
    val=$(echo "$2*$MAX/100" | bc)
fi

if [ "$1" = "-inc" ]; then
    new=$(( current + $val  ))
elif [ "$1" = "-dec" ]; then
    new=$(( current - $val  ))
fi

if [ $new -gt $MAX ]; then
    new=$MAX
elif [ $new -lt $MIN ]; then
    new=$MIN
fi

echo $new > "${DIR}brightness"

echo $current
echo $new
