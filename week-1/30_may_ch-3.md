# 30 May 2025 Report - Day 5 - Basics of bash scripting

## Content

Today I continued with chapter 3 a bit with few topics and focused more on the weekly video by making the presentation and the content that I have to discuss in the video.

Topics I learned today are:

1. Shopt    
This is a new built-in for configuring shell behavior as replacment for the 'option' configuration.sf

2. Shell Variables: Variables and Quoting 
Shell variables have a specific value and there are few built-in in bash. The value can be used by having '$' sign before the variable in the command. 

3. Built-in variables   


Sme commands I learned are:

1. `shopt -o` command: This command is duplication of parts of set command.
```bash
shopt -o
```

2. `shopt -p` command: This command gives list of settable options and their current values.
```bash
shopt -p
```

3. `HISTCMD` variable: This will give current command number in shell.
```bash
echo $HISTCMD
```
