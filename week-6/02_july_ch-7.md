- [Back to Homepage](/README.md)

# 02 July 2025 Report - Day 38 - I/O and Command-Line Processing

## Content

Today I started with the bioinformatics work involving installation of BLAST and other programs and understood how to execute it. I also learned about the bash scripting from other sources than the book. Continuing the chapter-7, I learned the topics and made the notes of:

1. read: save the input in variables

2. Reading lines from file

3. I/O redirection and command blocks:  
   code withitn { and } act like function and called command block.

4. Reading user input

Some commands learnt are:

1. read Syntax

```bash
read var1 var2 var3 ...
```

2. `dc` command: UNIX utility stimulates Reverse Polish Notation calculator

```bash
dc
```

3. Some options to read

```bash
#provide backslash as continuation character
read -r aline

# print string before output read
read -p

# to know how many characters by read is read
read -n varname

# to not print the input
read -s

# time in seconds to be specified
read -t
```
