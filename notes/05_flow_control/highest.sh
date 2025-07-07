#!/bin/bash


#sort -nr $1 | head -22

#!/bin/bash
# highest albums.txt [howmany]
# Print howmany highest-numbered lines in file.
# The input file is assumed to have lines that start with numbers.
# Default for howmany is 10.


if [ -z "$1" ]; then
echo 'usage: highest filename [-N]'
else
filename=$1
howmany=${2:--10}
sort -nr $filename | head $howmany
fi
