#! /bin/bash

##examples of jobs
# bring job foreground
sleep 30 &
[1] 22200
fg

# %x command to execute
sleep 50 &

jobs -x ech0 %1


##examples of signals

# ^c as INT
sleep 10
^C

## stty customization - not recommended generally
stty intr ^X

##example for task-1
bash killalljobs -QUIT


##example for disown
sleep 300 &
disown -h %1


##example of nested subshell
( 
  echo "Inside subshell"
  date
)


