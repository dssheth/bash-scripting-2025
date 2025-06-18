#!/bin/bash

# Improved pushd with if and exit status
pushd () {
    dirname=$1
    if cd ${dirname:?"missing directory name."}; then
        DIR_STACK="$dirname ${DIR_STACK:-$PWD' '}"
        echo $DIR_STACK
    else
        echo "Directory change failed. Still in $PWD."
    fi
}

# Use *`builtin`* to call original command in user defined commands like in cd command
cd () {
    builtin cd "$@"
    echo "$OLDPWD --> $PWD"
}

# Saving the exit status
cd hello
echo $?    # → 1 (error)

cd welcome
echo $?    # → 0 (success)

# The cd function with saving and then using the exit status value
cd () {
    builtin cd "$@"        # Run built-in cd with arguments
    es=$?                  # Save exit status
    echo "$OLDPWD --> $PWD"
    return $es             # Return same status as cd
}

# Format to find words in a file with AND condition
```bash
filename=$1
word1=$2
word2=$3

if grep $word1 "$filename" && grep $word2 "$filename"
then
    echo "$word1 and $word2 are both in $filename."
fi
```

# Format to find words in a file with AND condition
```bash
filename=$1
word1=$2
word2=$3

if grep $word1 "$filename" || grep $word2 "$filename"
then
    echo "$word1 or $word2 is in $filename."
fi
```