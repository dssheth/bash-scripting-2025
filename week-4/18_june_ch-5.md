---
title: General
layout: default
---

# 18 June 2025 Report - Day 24 - Flow Control

## Content
Today I continued with chapter-5 and learned about the concepts of flow control and practiced all the examples. What I learned and practiced is:

1. Exit Status      
When any command finishes executing, it returns a special value called its exit status, to check whether the conditions are true or false.

2. Return       
Returns function's exit status.'N' if given or else the last command's exit status.

3. Combination of Exit Statuses     
Combine multiple commands exit status logically with logic like *`AND`*, *`OR`* and *`NOT`*


The commands I learned today are:

1. Saving the exit status:
```bash
es=$?
```

2. Syntax for logical AND
```bash
statement1 && statement2
``` 

3. Syntax for logical OR
```bash
statement1 || statement2
```

4. Syntac for logical NOT
```bash
! command
```