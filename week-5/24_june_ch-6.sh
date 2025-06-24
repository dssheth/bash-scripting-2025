#!/bin/bash

val1=12 val2=5
result1=val*val2
echo $result1
val1*val2

declare -i val3=12 val4=5
declare -i result2
result2=val3*val4


#example for declare with  integers
declare -i val3=12
declare -i val4=5
declare -i result2
result2=val3*val4
echo $result2     # Output: 60


#example for arithmetic operator
i=0
echo $(( i++ ))  # Output: 0 (then increments to 1)
echo $i          # Output: 1

echo $(( ++i ))  # Output: 2 (increments first)
echo $i          # Output: 2


#example for BASH$N
echo $(( 2#1010 ))   # Binary 1010 = 10
echo $(( 16#FF ))    # Hexadecimal FF = 255


#example fo arithemtic for loops
for (( i=1; i<=12; i++ ))
do
  for (( j=1; j<=12; j++ ))
  do
    echo -ne "$((i * j))\t"
  done
  echo
done
