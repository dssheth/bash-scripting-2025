---
title: General
layout: default
---

# 23 June 2025 Report - Day 29 - Commmand-line options and typed variables

## Content

Today I completed all notes of chapter-5 and practiced the examples. Also started with the chapter-6 Command-line Options and Typed Variables. In this I learned about:

1. Command-line Options

2. shift:   
It shifts the number of arguments with the command.

3. Options with arguments

4. getopts

The commands I learned are:
1. *`shift`* syntax:
```bash
if [ $1 = -o ]; then
process the -o option
shift
fi
normal processing of arguments...
```

2. getopt syntax:       
```bash
while getopts ":ab:c" opt; do
  case $opt in
    a ) echo "Option -a" ;;
    b ) echo "Option -b with arg $OPTARG" ;;
    c ) echo "Option -c" ;;
    \? ) echo "usage: [-a] [-b barg] [-c] args..."; exit 1 ;;
  esac
done
```