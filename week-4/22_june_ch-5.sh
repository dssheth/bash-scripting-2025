#!/bin/bash

#select
select color in red green blue yellow
do
  echo "You selected $color"
  break
done


#convert until to while
while ! cp $1 $2; do
  echo 'Attempt to copy failed. waiting...'
  sleep 5
done

