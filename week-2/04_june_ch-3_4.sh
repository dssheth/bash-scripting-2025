#!/bin/bash

# To check the Terminal type using
echo $TERM 

# To make the variable as environment variable with value
export Hello=hi 

# To define variable in an enviroment of specific command
varname=value command
# Example
hello=hi pwd

# Change the value of your TERM and using emacs editor
TERM=myterm emacs filename

# Where environment variables come from:
#System-wide:
/etc/profile
#User-specific: 
~/.bash_profile

# The TERM value in as filename in database
/usr/lib/terminfo

# To set the editor 
export EDITOR 

# Check pathname of shell and bash
echo $BASH 
echo $SHELL 

# Variables used by screen oriented editors.
echo $COLUMNS
echo $LINES

# To add a customization command in .bash_profile 
#Example, the line is
PS1="\u \!--> "

echo 'PS1="\u  \!-->"' >> ~/.bash_profile

# To use command in background in subshell
scriptname &

