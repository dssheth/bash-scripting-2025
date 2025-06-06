---
title: General
layout: default
---

# 6 June 2025 Report - Day 12 - Basic Shell Programming

## Content

Today I continued reading the paper and almost have completed. I need to understand some of the results part again. The paper majorly talks about finding orthologs which are indicated as Reciprocal Best Hits by the four programs, namely, NCBI's BLAST, BLAT, LAST and UBLAST. The results of all are compared and checked. It shows that the faster running programs give lesser RBHs. 

I worked on the content and notes of the chapters to be covered in the video this week. Thus, I am going through some of the topics back and understanding thoroughly about the concepts and the script commands. From chapter 4 I continued learning the topics:

1. String Operators and its Syntax  
It allows to manipulate the values of variables.

2. Patterns and Pattern Matching    
To match portions's of variable's string value against patterns.

3. Length Operator  
Returns length of value of variable as character string.

4. Extended Pattern Matching


Some of the useful commands are:

1. Building block technique: Write first version of the script
```bash
sort -nr $1 | head -${2:-10}
```

2. Not to print a LINEFEED
```bash 
echo -n
```

3. Delete the shortest part matching the pattern with variable's value and return the rest.
```bash
${variable#pattern}
```

4. The length operator syntax
```bash
${#varname }
```

5. `*(patternlist)`: Matches zero or more occurrences of the given patterns.
```bash
*(patternlist)
```