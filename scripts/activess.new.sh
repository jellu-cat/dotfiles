#!/bin/bash
# Script for taking screenshots of the actual window

# -----------   NOTES    ---------- #

    # I think maaaybe i should put a variable to verify that the output of yad was correct (a file or a directory)

        # I have to make the program able to know if i didn't choose a directory in the GTK dialoque, so it will not return to ~

# -----------   VARIABLES    ---------- #

# Variables

## Filename of the screenshot

    ## in between () is a command, i want the output of that command to be part of the filename
    ## the $ symbol does just that, takes the output between () to put it in the variable

FILENAME="ss_$(date "+%Y-%m-%d_%H:%M:%S").png"

## Directory to store all the originals

    ## In the case I want a temporal screenshots (that means, I don't want to select manually a folder for it) this will be the directory every screenshots will be saved in.

ORIGINAL="/home/jellu/pictures/screenshots/ss/"

## Last directory used

    # It will be useful at the moment of selecting a folder with Zenity, so it will remember the last location

LASTDIR=$(cat /home/jellu/.lastdir.txt)

## Screenshot path

cd $LASTDIR
SS=$(zenity --title="Select a directory" --file-selection --save --filename="$FILENAME" --confirm-overwrite --width=700 --height=700)

# Checking if SS reffers to a directory

    # Since the output of zenity or yad won't always give me the path of the new file (that is: the file that i will selected + the filename) I have to check it myself

    # This piece of code could be either in a function or be a new command, but since i don't have time for that right now i will leave it like that

echo "  ------------------------------"

echo "  -> Filepath         $SS"

# The condition of the if statement is the output of grep. Since grep has the -q flag it will only return a boolean expression:

    # 0 (true)   = the pattern was found
    # 1 (false)  = the pattern was not found

# It is between parenthesis because is a miz of two commands. I used cat since i couldn't find another way to make the input of grep a variable

if (echo $SS | grep -q $FILENAME); then
    echo "                      found"
else
    echo "                      not found, is a directory "
    SS="$SS/$FILENAME"
fi

echo "  ------------------------------"
echo ""

# Printing the variables

echo "  ------------------------------"
echo "  -> Filename         $FILENAME"
echo "  -> Last Directory   $LASTDIR"
echo "  -> Filepath         $SS"
echo "  ------------------------------"
echo ""

## Taking the Screenshot

    # For this i will be using scrot, a cli utility to take screenshots

    # It will name the image output as the variable of filename i alrealy defined

    # The u flag uses the current focused window only, the flag i disables keyboard exit (only with ESC), the o option prevents scrot adding numbers at the end of the filename in order to prevent overwriting

    # Finally, the e flag invokes a command after taking the screenshot, storing the image in a variable f

    # I use optipng to compress a little the final image and xclip to store it in the clipboard

scrot $ORIGINAL$FILENAME -uo -i -e 'optipng $f && xclip -selection clipboard -target image/png -i $f'

## Changing permissions for the image

    # The screenshot is already in a file, so I can change its permissions

chmod 666 $ORIGINAL$FILENAME

## Copying the image stored in the default directory in the directory specified

    # It only works if i selected a directory in the GTK dialog

cp "$ORIGINAL$FILENAME" "$SS"
chmod 666 "$SS"

## Changing last directory

LASTDIR="${SS%/*}"
echo "$LASTDIR" > /home/jellu/.lastdir.txt

echo "  ------------------------------"
echo "  -> Last Directory   $LASTDIR"
echo "  -> Last Directory   $(cat ~/.lastdir.txt)"
echo "  ------------------------------"
echo ""
