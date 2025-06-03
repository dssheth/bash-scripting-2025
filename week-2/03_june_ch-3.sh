#!/bin/bash

# To add a directory to PATH, put this in .bash_profile
# directory = /home/bin
PATH=$PATH":/home/bin"

# The unsafe way to do is
PATH="/home/bin:"$PATH

# For specific command, type full path of command
/home/bin/cd

# To print full pathname of command
type ls

# To remove specific command like cmd
hash -d cmd

# To off the command hashing 
set hashall

# The current directory will look for subdirectory called dirneme
cd dirname

# look for doc 
cd doc

# Reffering to directories
shopt cdable_vars

# The non existing directory becomes variable
alias bin=/home/bin 
cd bin

# To start counting from new value for SECONDS
SECONDS=0
# run code
echo "Time taken: $SECONDS seconds"
