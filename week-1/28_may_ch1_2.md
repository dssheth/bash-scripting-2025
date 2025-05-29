# 28 May 2025 Report - Day 3 - Basics of bash scripting

## Content

I completed the chapter 1 today and started with chapter 2. What I learned today is:

1. Background Jobs and Priorities

The commands running in background is called background job where no user input is required. This is done by putting '&' after the command. 
Every job is assigned a priority in system.

2. Background I/O

Background jobs will not have terminal control and thus no input and output is required there.

3. Special Characters, Quoting, Quating quotation marks and Backslash-escaping

Special character including wildcards have specific meaning to shell. Using special characters without meaning is quoting. To change meaning of character backslash can be used. It acts as using quotes.

4. How to continue lines in terminal

We can quote the RETURN key by ending line with backslash or not closing the quotation mark and remove the original meaning of RETURN key.

5. Control keys and help command
   
Control keys are type of special character which do not print anything on screen but considered as special commands by system.  
The help command in gives information about the commands when you type help with the command.

6. Started with Chapter-2: Command-Line Editing

bash starts as emacs-mode. Editing mode in shell can be done by using set commands.

7. The History List

The commands typed are recorded in shell history.


Some of the commands I learnt are:

1. `find` command: Matches the string provided for the files in the current directory
```bash
find
```

2. To see settings and change them.
```bash
stty
```

3. Some of the control keys are: 
```bash
CTRL-M  
CTRL-D
CTRL-S
CTRL-Q
CTRL-H
CTRL-U
CTRL-?
```

4. `help` command: This command gives information about the command. Using 'more' will show one screenful at a time.
```bash
help 
```

5. To enter editing mode in shell using set command.
```bash
set -o emacs
set -o vi   
```

6. The bash command history when shell is exitted is saved in this file.
```bash
.bash_history
```
7. To call bash history file.
```bash
echo $HISTFILE
```
