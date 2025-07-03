#!/bin/bash


## using eval command to restart from first step
listpage="ls | more"
$listpage # search for | and more as args

eval $listpage #will work

#command conatain output redirectors and pipe
eval "$@" > logfile 2>&1 &

#makecmd function using make command
makecmd () {
  read target colon sources
  for src in $sources; do
    if [ $src -nt $target ]; then
      while read cmd && [[ $cmd =~ ^[[:space:]] ]]; do
        echo "$cmd"
        eval ${cmd#\t}
      done
      break
    fi
  done
}
