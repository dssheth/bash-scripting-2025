#!/bin/bash

num=$1

if [ "$num" -lt 10 ]; then
    echo "Number is less than 10"
else
    echo "Number is 10 or more"
fi
