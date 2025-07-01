#!/bin/bash

#example for backslash characters
echo -e "Name:\tAlex\nStatus:\tStudent"

#printf examples

#to make it same as echo use \n
printf "hello\n"

# printf format 
printf "%s %s\n" hello world

#printf specifying widht of output field 
#right justitification
printf "|%20|\n"  hello
#left justification
printf "|%-10|\n" hello

# floating point precision
printf "%.2f\n" 3.14159

#printf flag in numerbers
printf "%+d\n" 42

# printf specifiers
#%b
printf "%b\n" "Hello\nWorld"

#%q
printf "%q\n" "hello world"

