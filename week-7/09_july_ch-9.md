- [Back to Homepage](/README.md)

# 09 July 2025 Report - Day 45 - Debugging Shell Programs

## Content

Today I made the video of chapter-7. Made the notes of ch-8 and continued with the chapter-9, Debugging the shell programs. The topics I covered are:

1. Understanding the Debugging Aids

2. echo to debug
- To add echo in scripts to get outputs of the lines executed.

3. `set -o` options 
- can be in scripts or the running script on command-line.

The commands learnt are:

1. `set -o -v` option: echo script lines before execution
```bash
bash -v scriptname
```

2. To check PS4 value
```bash
echo $PS4
```

3. `set -o -x` option: To print after execution 
```bash
#better to use inside scripts
set -o xtrace
# script lines
```

4. `LINENO` command: Prints the current running script line
```bash
echo $LINENO
```

5. `set -o -n` option: Checks for syntax error and no execution.
```bash
set -o noexec
#script lines

#or in command-line
bash -n scriptname
```