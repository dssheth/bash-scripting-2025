#!/bin/bash

## To print everything
#System V
ps -e

#BSD 
ps -ax


#example of trap
trap "echo 'You hit CTRL-C!'" INT

while true; do
  sleep 60
done

#loop in trap
loop ( ) {
trap "echo 'How dare you!'" INT
while true; do
sleep 60
done
}
trap "echo 'You hit control-C!'" INT
loop

#to cleanup files
trap 'mv $msgfile dead.letter; exit' INT TERM
msgfile=/tmp/msg$$
cat > $msgfile
# send the contents of $msgfile to the specified mail add
rm $msgfile


# example of resetting traps
trap abortmsg INT
trap cleanup TERM
msgfile=/tmp/msg$$
cat > $msgfile
# send the contents of $msgfile to the specified mail add
rm $msgfile
trap - INT TERM