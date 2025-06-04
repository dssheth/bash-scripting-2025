---
title: General
layout: default
---

# 4 June 2025 Report - Day 10 - Customizing the Environment

## Content

Today I completed the chapter 3 and started a bit with chapter 4 and learned about the concepts of:

1. **Customization and Subprocesses** : Environment variables and other common variables  
   Whenever run a command, it tells shell to run a subprocess. A few shell things might be known to the subprocesses.  
   One kind of thing known to all types of subprocesses are environment variables.

2. **Terminal types**: TERM
   Tells what type of terminal is used.

3. **The environment file**
   All environment variable definitions are in environment file that is .bashrc file in bash.

4. **Customization Hints**  
   The ways to cusstomize commands in shell and then in .bashrc file.

5. **Shell Scripts and Functions**  
   A script is the shell program containing the commands.

The major commands and variables to learn were:

1. `TERM` variable: To know what kind of terminal is used.

```bash
echo $TERM
```

2. To make the variable environment variable for that session

```bash
export varnames
```

3. `export` command: To check the environment variables

```bash
export
export -p
```

4. To run the created script

```bash
source scriptname

#If in the same directory of path in subshell
./scriptname
```

5. `chmod` command: Give permission to execute the script
```bash
chmod +x scriptname
```

