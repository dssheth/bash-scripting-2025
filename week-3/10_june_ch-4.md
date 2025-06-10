---
title: General
layout: default
---

# 10 June 2025 Report - Day 16 - Basic Shell Programming

## Content

Today I continued with chapter 4 Basic Shell Programming and completed it. It showed some basic commands and how to us them in programming. The topics I learnt are:

1. Command Substitution:    
Allows to use the standard output of a command similar as the value of a
variable.

2. Advanced Examples: `pushd`  and  `popd`  
Putting something into stack is called pushing and taking something is called popping.

The commands I learned:
1. Command substitution syntax
```bash
$ (UNIX command)
```

2. To get detailed informtion about command with location
```bash
ls -l $(type -path -all command-name)
```

3. `cut` command: It extracts columns from tabular data.
```bash
cut column -d filename
```

4. `lsd` function: It lists the specific date
```bash
lsd 'text'
```

5. `cd -` command: To go back to previous directory
```bash
cd -
```

6. `pushd` command: pushes the directory in stack
```bash
pushd dirname
```

7. `popd` command: Removes the top directory off stack
```bash
popd
```
8. `pushd` function:
```bash
pushd ( )
{
    dirname=$1
    DIR_STACK="$dirname ${DIR_STACK:-$PWD' '}"
    cd ${dirname:?"missing directory name."}
    echo "$DIR_STACK"
}
```

9. popd function:
```bash
popd ( )
{
    DIR_STACK=${DIR_STACK#* }
    cd ${DIR_STACK%% *}
    echo "$PWD"
}
```