#!/bin/bash

#value of current directory
$(pwd)

#names of files in Home directory
$(ls $HOME)

# contents of file with trailing newlines removed.
$(< hello)

#Extract a specific column from a |-separated table
#File named albums with different columns separated by pipe
cut -f4 -d\| albums # Extracts the 4th column

# Use a helper function like getfield to convert a field name to a number
fieldname=$1
cut -f$(getfield $fieldname) -d\| albums

#List experimental result files modified on Jun 06
lsd "Jun 06"

# To go to Desktop directory in home
pushd Desktop

#To go back to previous directory
popd



