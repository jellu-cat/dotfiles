#!/bin/sh

setxkbmap latam
xmodmap ~/.Xmodmap
echo "Keyboards ready"

nitrogen --restore &

if pgrep -x redshift; then
    killall redshift
fi
redshift &
echo "Redshift ready"

if pgrep -x copyq; then
    killall copyq
fi
copyq &
echo "Copyq ready"

if pgrep -x sxhkd; then
    killall sxhkd
fi
sxhkd -c ~/.config/sxhkd/sxhkdrc &
sxhkd -c ~/.config/sxhkd/bsphkd &
echo "sxhkd ready"

bash ~/.config/polybar/launch.sh --forest
compton &
