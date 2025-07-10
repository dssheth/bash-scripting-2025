#! /bin/bash

# EXIT example
trap 'echo Thank you for playing!' EXIT
magicnum=$(($RANDOM % 10 + 1))
echo 'Guess a number between 1 and 10:'
while read -p 'Guess: ' guess ; do
    sleep 4
    if [ "$guess" = "$magicnum" ]; then
        echo 'Right!'
        exit
    fi
    echo 'Wrong!'
done


# ERR better way
function errtrap {
    es=$?
    echo "ERROR line $1: Command exited with status $es."
}
trap 'errtrap $LINENO' ERR

# debug
declare -t myfunc

#enable all functions
set -o functrace   # or: set -T
