#!/bin/bash

# For listing the pathnames in $PATH with any delimiter
IFS=:
for dir in $PATH
do
  ls -ld $dir
done


# To check for non-existing directories in PATH variable
IFS=:
for dir in $PATH; do
  if [ -z "$dir" ]; then dir=.; fi
  if ! [ -e "$dir" ]; then
    echo "$dir doesn't exist"
  elif ! [ -d "$dir" ]; then
    echo "$dir isn't a directory"
  else
    ls -ld $dir
  fi
done
