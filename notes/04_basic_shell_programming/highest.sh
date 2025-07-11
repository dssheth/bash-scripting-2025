#!/bin/bash
# highest albums.txt [howmany]
# Print howmany highest-numbered lines in file.
# The input file is assumed to have lines that start with numbers.
# Default for howmany is 10.

filename=$1
filename=${filename:?"missing."}
header=$3
howmany=${2:-10}
echo -e -n ${header:+"ALBUMS ARTIST\n"}
sort -nr $filename | head -$howmany

