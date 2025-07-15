#! /bin/bash

#create a script to detect ^ being used as a pipe:
IFS=:
for d in $PATH; do
    echo checking $d:
    cd $d
    scripts=$(file * | grep 'shell script' | cut -d: -f1)
    for f in $scripts; do   
        grep '\^' $f /dev/null
    done
done

## example for -c string option
bash -c 'echo "Bioinformatics script executed: $0"' hello
#hello is $0

## To read command from stdin with -s
echo 'echo Hello' | bash -s

##print each command before execution with -v
bash -v script.sh

