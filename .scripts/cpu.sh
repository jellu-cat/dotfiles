#!/bin/sh

############################################################

# Script Name     :   CPU
# Description     :   Percentaje of CPU load* module
# Args            :   none
# Author          :   Jellu Cat

############################################################

####################
# Obtaining values #
####################

# The load average of the CPU in 1 minute, this can be thought as the
# number of processes over the past  minute that had to wait their
# execution time.
LOAD=$(cat /proc/loadavg | awk '{print $1}')

# To the load average to be useful it needs the number of processors
# in the CPU
NPROC=$(nproc)

################
# Calculations #
################

PERCENT=$(echo "scale=2; ($LOAD / $NPROC * 100)" | bc -l)

############
# Printing #
############

printf "[CPU] %.0f%%\n" $PERCENT
