#!/bin/bash


#sort -nr $1 | head -22

#!/bin/bash
# highest albums.txt [howmany]
# Print howmany highest-numbered lines in file.
# The input file is assumed to have lines that start with numbers.
# Default for howmany is 10.


if [ -n "$(echo $1 | grep '^-[0-9][0-9]*$')" ]; then
    howmany=$1
    shift
elif [ -n "$(echo $1 | grep '^-')" ]; then
    echo 'usage: highest [-N] filename'
    exit 1
else
    howmany="-10"
fi

filename=$1
sort -nr $filename | head $howmany