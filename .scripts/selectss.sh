#!/bin/bash
# Personal scrpit for taking screenshots of a selected area

# Variable for setting correctly the filename
FILENAME=$(date "+%Y-%m-%d_%H:%M:%S")

scrot pictures/screenshots/ss_${FILENAME}.png -s -f -o -e 'optipng $f && xclip -selection clipboard -target image/png -i $f'

## Here is a variable that gets the output from a GTK menu in which a copy of the screenshots will be saved
SS=$(zenity --file-selection --filename=ss_${FILENAME}.png --save --confirm-overwrite)

cp pictures/screenshots/ss_$FILENAME.png "$SS"
