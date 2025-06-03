#!/bin/bash

#If the value has multiple words, enclose it in quotes:
greeting="Hello World"

#use echo for value for above variable
echo $greeting
#output: Hello World

# print both variable and value
echo "The value of \$greeing is \"$greeting\"."
#Output: The value of $greeting is "Hello World".

#Causes the shell to error when accessing an undefined variable.
set -o nounset 

# Double quotes for variable value correct evaluation
fred='Four    spaces between these words.'
echo $fred      
# Output: Four spaces between these words.
echo "$fred"    
# Output: Four    spaces between these words.

# Controls what gets saved in the history list.
echo $HISTCONTROL 

# If want date and time with each history
HISTTIMEFORMAT="%y/%m/%d %T "\

# How often (in seconds) Bash checks for mail updates. 
MAILCHECK

# A colon-separated list of mail files (can include custom messages) checking for incoming mail.
MAILPATH

# You can turn mail alerts on/off using
shopt -s mailwarn   # Enable notifications
shopt -u mailwarn   # Disable notifications
