---
title: General
layout: default
---

# 01 July 2025 Report - Day 37 - I/O and Command-Line Processing

## Content

Today I made two small projects to learn bash scripting in terminal such as creating random password and making a format for certain files that are created on executing the script. Continuing the chapter, some topics learnt today are:

1. echo escaping sequences: start with backslash

2. printf and the format specifiers

3. printf precision modifier: for decimal or floating-point values in string

4. printf flags

Some of the commands learnt are:

1. Some backslash commands
```bash
#For backslash
echo \b "text"

##escape character
echo \e 
echo \E

#for newline
echo -n "text"

#horiozontal tab
echo \t "text"
```

2. `printf` command: similar to echo, but no newline creation
Syntax
```bash
printf format-string [arguments]
```
3. `%b` in printf: Intereprets echo style escape sequence
```bash
printf "%b\n" 'text'
```

4. `%q` in printf: prints string argument in way that can be used for shell output
```bash
printf "%q\n" 'text'
```