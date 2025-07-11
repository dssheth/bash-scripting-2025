#!/bin/bash
# List files by modification date (adjusted for column layout)
function lsd
{
    date=$1
    ls -l | grep -i "^.\{34\}$date" | cut -c47-
}
lsd "$1"