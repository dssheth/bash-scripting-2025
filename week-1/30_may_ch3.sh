# To check set and unset options
shopt -s
shopt -u

# To create a new variable (hello) and giving it value (hi).
hello=hi

#To have value of variable hello 
echo "$hello"
#output: hi

# To see maximum number of lines saved in history file and maximum number of lines to remember in list
echo $HISTFILESIZE
echo $HISTSIZE

# To see time stamp of each history entry
echo $HISTTIMEFORMAT

# Path to file of command history
echo $HISTFILE