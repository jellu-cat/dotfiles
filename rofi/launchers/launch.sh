#!/bin/sh

dir="$HOME/.config/rofi/launchers/styles"

# Available themes:
#   vertical
#   box
theme="box"

rofi -no-lazy-grab -show drun -modi drun -theme $dir/$theme
