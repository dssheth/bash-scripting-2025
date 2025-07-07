- [Back to Homepage](/README.md)

# 29 May 2025 Report - Day 4 - Basics of bash scripting

## Content

The chapter 2 contains majorly about emacs and vi text editors and their commands. There are new text editors currently like VSCode and thus I have not focused much deeply in these. I also started reading the chapter 3 today. The other topics covered are:

1. The fc command  
   This is used to see the previous history commands.

2. The History Expansion and Word Desingnator, Modifiers
   This helps to recall and edit commands in the history list. Word designator helps to refer to specific words in previous command. Modifiers follow the word designator if present any.

3. readline
   The command-line editing interface of bash is readline. It provides editing in either emacs or vi modes. The default startup file is .inputrc.

4. Key Bindings
   Using bind we can see the current settings of bash command line. usomizing your envioronment.

- [Day 04 - 29 May 2025 - The Basics of Bash Scripting](/week-1/29_may_ch2_3.md)-

5.  Start Chapter 3: Customizing your environment.  
    Envirnment is collection of concepts

6.  Aliases and Options
    The command name can be changed by aliases command in bash.Aliases can be used at beginning of command string majorly.  
    Options let you change the behavior of shell as they are on or off.

The commands learned today are:

1. `fc -l ` command: This command lists the previous commands in the bash history.

```bash
fc -l
```

2. `fc -s` command: This command helps to rerun the command.

```bash
fc -s
```

3. `!!` command: This command will reexcute the last command.

```bash
!!
```

4. `bind` command: This command will show the current settings of bash terminal

```bash
bind
```

5. Spcial files when log in and out of shell.

```bash
.bash_profile
.bash_logout
.bashrc
```

6. UNIX searching utility:

```bash
grep
```

7. `set -o optionname` command: This command help to change the command with more than one option with set command.

```bash
set -o command
```
