- [Back to Homepage](/README.md)

# 19 June 2025 Report - Day 25 - Flow Control

## Content

Today I continued with the chapter-5 and made the notes. I also learned how the functions can be improvised like _`pushd`_ and _`popd`_ with better commands and conditions in the script for better execution and less errors and limitations. Practiced all the conditons and commands that are included till certain topics like:

1. Condition Tests  
   _`[ condition ]`_ in shell returns an exits status to tell whether the _condition_ is true or not.

2. String comparisions  
   The _`[]`_ having expressions include different operators like string comparision operators for string values.

3. File attributin checking  
   Kind of operators used in conditional expressions that checks for certain properties of file.

4. Integer Conditionals  
   Shell has arithmetic tests that compare lexicographic values of strings and not numeric values.

The syntax and other bash scripts i practiced and understood are:

1. To check if two strings matches each other in a conditonal expression.

```bash
str1=str2
```

2. Combining conditions with conditional expressions

```bash
if [ condition ] && [ condition ]; then
```

3. Combine commands and conditional expressions

```bash
if command && [ condition ]; then
```

4. Arithmetic test operators for numbers only

```bash
[ "$a" -gt "$b" ]
```
