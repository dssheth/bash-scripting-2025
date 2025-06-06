---
title: General
layout: default
---

# 5 June 2025 Report - Day 11 - Basic Shell Programming

## Content

Today I started to read the paper that was given by the professor about finding orthologs as Reciprocal Best Hits. From the chapter 4 I learned about some of the topics, which are:

1. Positional Parameters    
   They are built-in variables that hold command line arguments to scripts.

2. Local Variables in functions and variable syntax 
   

3. Quoting

Some of the commands learned are: 

1. `#` variable: Gives number of positional parameters 
```bash
echo "$# arguments" 
```

2. To print a list of positional parameters separated by commas
```bash
IFS =,
echo "$"*


```