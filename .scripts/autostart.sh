#!/bin/sh

function run(){
    local name=$1

    if pidof "$name"; then
        echo "$name already running!"
    else
        if [ "$name" != "sxhkd" ]; then
            echo "Running $name"
            `$name` &
        else
            sxhkd -c ~/.config/sxhkd/sxhkdrc &
            sxhkd -c ~/.config/sxhkd/bsphkd &
        fi
    fi
}

setxkbmap latam &

nitrogen --restore &
run compton

run redshift
run sxhkd
run copyq

xmodmap ~/.Xmodmap &

bash ~/.config/polybar/forest/launch.sh
