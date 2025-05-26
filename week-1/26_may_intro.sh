#!/bin/bash

# List files in the current directory
ls

# List all files including hidden ones
ls -a

# List files in long format (with permissions, size, etc.)
ls -l

# Change to the user's home directory
cd ~/

# Go up one directory from the current location
cd ..

# Print a simple message to the terminal
echo 'Hey There I am learning bash'

# This will just print the string '2 + 2', not calculate it
echo '2 + 2'

# Correct way to do arithmetic in Bash
echo "The result of 2 + 2 is: $((2 + 2))"

# Create a new directory called "practice"
mkdir practice

# Change into the "practice" directory
cd practice

# Create a new empty file called "example.txt"
touch example.txt

# Write some text into the file
echo "This is a test file." > example.txt

# Append another line to the file
echo "Learning Bash scripting is fun!" >> example.txt

# Display the contents of the file
cat example.txt

# Set a variable and print it
my_name="Alex"
echo "My name is $my_name"

# Conditional example
num=10
if [ $num -gt 5 ]; then
  echo "$num is greater than 5"
else
  echo "$num is not greater than 5"
fi

# Loop example: print numbers 1 to 5
for i in {1..5}; do
  echo "Number: $i"
done

# Show current date and time
date

# Show disk usage of current directory
du -sh .
