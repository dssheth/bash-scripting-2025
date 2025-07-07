- [Back to Homepage](/README.md)

# 3 June 2025 Report - Day 9 - Customizing the Environment

## Content

Today I worked on improving my internship repository on Github by making an website for my everyday commits and work for easy accesibility of the content.  
From the book, I completed some of the topics of chapter 3 which are:

1. Prompting Variables  
   Bash has four prompt strings stored in variables.

2. Command Search Path  
   PATH variable help the shell to find the commands entered.

3. Command Hashing  
   Bash has hash table for commands for shell to search.

4. Directory Search Path and Variables  
   CDPATH variable has list of directories to augment the cd command functionality.

5. Miscellaneous Variables  
   Variables for status indicator and miscellaneous purposes.

Some of the commands learned are:

1. To insert username in prompt string.

```bash
# Shows username and command number
PS1="\u \!--> "
# Shows current directory in prompt
PS1="\w--> "
```

2.`echo $PATH` command: To get the path

```bash
echo $PATH
```

3. `type` command: Print the full pathname of command

```bash
type command
```

4. `hash` command: To see the current hash table contents

```bash
hash
```

5. `hash -r` command: To clear entire hash table

```bash
hash -r
```

6. `hash -p` command: To add command in hash table

```bash
hash -p
```
