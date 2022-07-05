#!/bin/sh

############################################################

# Script Name     :
# Description     :
# Args            :   none
# Author          :   Jellu Cat

############################################################

ACTIVEDKT=$(wmctrl -d | awk '$2 ~ /*/ {print $0}')
NUMBER=$(echo "$ACTIVEDKT"| awk '{print $1}')
NUMBER=$(echo "$NUMBER + 1" | bc -l)
NAME=$(echo "$ACTIVEDKT"| awk '{print $9}')

echo "[$NUMBER - $NAME]"
