- [Back to Homepage](/README.md)

# 21 June 2025 Report - Day 27 - Flow Control

## Content

Today I completed the for loop and practiced all the tasks in that topic and made the notes for the same. I tried all the functions and commands in the shell script and understood the logic behind them.

Some of the commands in script I leaened are:

1. To put all the PATH directories in line

```bash
IFS=:
for dir in $PATH
do
  ls -ld $dir
done
```

2. For multiple command-liine argument execution

```bash
IFS=:
for dir in $PATH
do
  ls -ld $dir
done
```

- If _`ls`_ error indicates that the directory on _`PATH`_ is missing, the script can be improved

```bash
IFS=:
for dir in $PATH; do
  if [ -z "$dir" ]; then dir=.; fi
  if ! [ -e "$dir" ]; then
    echo "$dir doesn't exist"
  elif ! [ -d "$dir" ]; then
    echo "$dir isn't a directory"
  else
    ls -ld $dir
  fi
done
```
