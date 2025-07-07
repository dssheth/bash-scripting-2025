#! /bin/bash

##coroutine example
ls | more

#when two programs run simultaneously without connection
sleep 100 &
hello

#to wait for program completion
sleep 100   &
hello
wait

#parallel file copying script
file=$1
shift
for dest in "$@"; do
  cp $file $dest &
done
wait

#To use nested subshells
( 
  echo "Inside subshell"
  date
)


##command block vs nested subshells
#command block
{
  hello=mad
  trap "echo 'You hit CTRL-C!'" INT
}
while true; do
  echo "$hello"
  sleep 10
done

#nested subshell
(
  hello=mad
  trap "echo 'You hit CTRL-C!'" INT
)
while true; do
  echo "$hello"
  sleep 10
done

#normal way
prog1 > file1
prog2 > file2
cmp file1 file2

#process substitution
cmp <(prog1) <(prog2)
