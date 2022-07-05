#!/bin/bash

# --------------
# This is a script practice for the if-else control sequence in bash.

# The condition is the output of the command (pgrep -x sxhkd), that is 0 if there is at least one instance of the program sxhkd and 1 if there is no match.
# --------------

#############
# First Way #
#############

# The command test is the same as " [ CONDITION ] ", since " [ " is an alias for the test command (it requires though the closing bracket).

# As in C, if the condition returns a true value (a 0) it executes the code inside the if.

# In this first way i'm storing the exit status of the pgrep command in the sts variable and then compare sts to 0.

# pgrep has a few exit status as i mentioned in the header.

pgrep -x sxhkd
sts=$?

if test $sts -eq 0; then
    echo "command returned 0"
else
    echo "command returned 1"
fi

##############
# Second Way #
##############

# In this case i'm doing this more directly, since the condition of the if is the command itself (or rather, the exit status itself)

if pgrep -x sxhkd; then
    echo "command returned 0"
else
    echo "command returned 1"
fi
