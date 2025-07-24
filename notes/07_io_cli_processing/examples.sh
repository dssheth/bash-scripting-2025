#!/bin/bash

##examples of I/O redirectors

#pipe
ls | grep "pdf"

# >file
echo "Hello" > out.txt

# <file
wc -l < myfile.txt

# >> file
echo "New line" >> log.txt

# >| file
set -o noclobber
echo "Data" > file.txt   # Blocked
echo "Data" >| file.txt  # Forced

# n>|file
echo "hello" 1>| output.txt  #1 = stdout

# <> file
read line <> out.txt


##example of here-string
wc -w <<< "hello world how are you"


## FD examples
#to save error file
command 2> error.txt

# to save stdout
> logfile 2>errorfile.txt


## examples of echo
#option -e to interpret escape char
echo -e "Hello\tWorld"

# option -E to disable escape interpretation
echo -E "Text with \n no effect"

# option -n to supress trailing newline
echo -n "No newline here"


##echo options
#Unicode or special character using octal
echo -e "\043"

##printf examples
#for decimal integer
printf "Count: %d\n" 42

#for floating point
printf "Value: %f\n" 3.14159

#float point precision
printf "%.2f\n" 3.14159

#width and precision
myvar=42.123456
printf "|%*.*G|\n" 5 6 $myvar

#print limited string
printf "|%.3s|\n" "biology"


##examples of flags
#for positive number
printf "%+d\n" 42

#to write in hex
printf "%#x\n" 255

#to pad with zeros
printf "%05d\n" 42

#error handling
printf "%d\n" abc


##read examples
#no variable
read
hello world

echo $REPLY


##examples for read options

#-a array
read -a greet
hi hello welcome
echo ${greet[2]} 

# -d custom delimiter
read -d $ stop
# Stops reading when `$` is reached

# -e readline features
read -e line

# -n 
read -n 10 hello
# Reads only 10 characters, then stops

# -p prompt before read
read -p "Enter name: " name

# -r disable backslash escape
    #create file
A line with a\n escape sequence

read -r line < file
echo -e $line

# -s silent input combined with -p
read -s -p "Enter password: " secret
echo $secret

#combined with -n
read -s -n5 key
echo $key

# -t time before timeout
read -t 5 -p "Enter something: " input


##examples of quoting rules
greet=hello
echo $greet
echo "$greet"
echo \$greet
echo `$greet'
echo "'$greet'"
echo ~ Desktop
echo "~ Desktop"
echo `~ Desktop'

##examples for enable options
enable -n test   # disables the built-in `test`
./test           # now your script `test` runs
enable test      # re-enable the built-in

enable -n pushd popd dirs  # Disable all 3

# List enabled built-ins
enable -p     

 # List disabled built-ins
enable -n                 
