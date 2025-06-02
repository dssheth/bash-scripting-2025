# 2 June 2025 Report - Day 8 - Basics of bash scripting

## Content

I briefed with chapter 2 and 3 previous sections and then continued with the chapter 3 today. The topics I learnt are:

1. Shell Variables  
Shell variables have a value associated with it. Undefined variable value is blank.

2. Variables and Quoting    
Variables require double quotes to preserve and ensure the correct evaluation of the variable value.

3. Editing mode variables and some time stamp formats

4. Mail Variables   

Some commands that I learned are:

1. Syntax for defining variables 
```bash
varname=value
```

2. Use the dollar sign ($) before the variable name
```bash
echo "$varname"
```

3. Use the unset command to remove the variable
```bash
unset varname
```
4. `echo` command: Use to see value of variable
```bash
echo $varname
```
5. Use time stamp format
```bash
HISTTIMEFORMAT="%y/%m/%d %T "
```

6. `MAIL`: Add filename to check the mail in it
```bash
MAIL=filename
```
