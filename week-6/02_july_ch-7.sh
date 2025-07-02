#!bin/bash

#examples of read

read character1 character2
hello world

#setting TERM ON TTYR
TERM=vt100  # default
line=$(tty) # get current terminal device path, like /dev/tty03
while read dev termtype; do
  if [ $dev = $line ]; then
    TERM=$termtype
    echo "TERM set to $TERM."
    break
  fi
done


#redirect function to definiton
findterm() {
  TERM=vt100
  line=$(tty)
  while read dev termtype; do
    if [ "$dev" = "$line" ]; then
      TERM=$termtype
      echo "TERM set to $TERM."
      break
    fi
  done
} < /etc/terms


#redirect at end of loop
TERM=vt100
line=$(tty)
while read dev termtype; do
  if [ "$dev" = "$line" ]; then
    TERM=$termtype
    echo "TERM set to $TERM."
    break
  fi
done < /etc/terms

#command block
{
  TERM=vt100
  line=$(tty)
  while read dev termtype; do
    if [ "$dev" = "$line" ]; then
      TERM=$termtype
      echo "TERM set to $TERM."
      break
    fi
  done
} < /etc/terms


#RPN calculator using dc command
{ 
  while read line; do
    echo "$(alg2rpn "$line")"
  done 
} | dc


#prompt with read
echo -n "terminal? " >&2
read TERM
echo "TERM is $TERM"


# -a: read into array
read -a greet
# Input: hello world welcome
echo ${people[2]}  # Output: welcome


#-n: read fix number of characters
read -n 10 greet
# Reads only 10 characters, then stops

# -s: no input print
read -s -p "Enter password: " secret
