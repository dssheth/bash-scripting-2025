#! /bin/bash

## example for xtrace in a file
set -o xtrace
hello=greet
echo "$hello"

## example for -v
#inside file script.sh
hello
script 
# print before execution and identify the error file before next execution

# in command line
bash -v script.sh



## to change PS$
PS4="xtrace-->"
echo $PS4

##change with LINENO
PS4='$0 line $LINENO: '

## to use noexec in command line
bash -n scriptname
bash -n script.sh
