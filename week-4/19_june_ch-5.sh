#!/bin/bash

# Check if a Variable Is Empty
name=""
if [ -z "$name" ]; then
    echo "Name is empty."
fi

# To check if the sting is not null
name="DNA"
if [ -n "$name" ]; then
    echo "Name is: $name"
fi

# using logical AND
if [ -e "$file" ] && [ -r "$file" ]; then
    echo "File exists and is readable."
fi

# using logical NOT
if [ ! -x "$file" ]; then
    echo "File is not executable."
fi

# command and condition
if command && [ -f "$1" ]; then
    echo "Command succeeded and file exists."
fi


## check with values with arithmetic tests
a=12
b=8

if [ "$a" -gt "$b" ]; then
    echo "$a is greater than $b"
fi