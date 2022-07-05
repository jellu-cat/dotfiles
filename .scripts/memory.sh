#!/bin/sh

############################################################

# Script Name     :   Memory (RAM)
# Description     :
# Args            :   none
# Author          :   Jellu Cat

############################################################

####################
# Obtaining values #
####################

TOTAL=$(cat /proc/meminfo | awk 'NR == 1 {print $2}')
FREE=$(cat /proc/meminfo | awk 'NR == 3 {print $2}')

################
# Calculations #
################

PERCENT=$(echo "scale=2; ((($TOTAL - $FREE) / $TOTAL) * 100)" | bc -l)

############
# Printing #
############

printf "[RAM] %.0f%%\n" $PERCENT
