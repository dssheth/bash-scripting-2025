---
title: General
layout: default
---

# 27 May 2025 Report - Day 2 - Introduction to bash scripting

## Content

I continued learning the chapter 1 today. The concepts I learned are about:

1. Filenames, Wildcards and Pathname Expansion

Filenames specify pattern of set of filenames without knowing each names using special characters called wildcards. The process of matching expressions containing wildcards to filenames is called wildcard expansion also called globbing. These wildcards are part of pathname expansion and can be used in pathname.

2. Brace Expansion

This expands to arbitrary string given in braces.

3. Input and Output and its redirection

4. Pipelines

By pipe "|" the output of command can be directed to input of other command.

Some of the commands I learnt regarding the same are:

1. `ls *.[set]` command: This command will send the files which end with any letter in set after a period to ls as arguments.

```bash
ls *.[cho]
```

2. `ls *` command: This command lists all the files in the current directory

```bash
ls *
```

3. Some UNIX data filtering utilities are:

```bash
cut
grep
sort
cat
sed
tr
```
