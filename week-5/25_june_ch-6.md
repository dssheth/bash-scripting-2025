- [Back to Homepage](/README.md)

# 25 June 2025 Report - Day 31 - Commmand-line options and typed variables

## Content

Today I uploaded the video on the classroom for chapter-5. Also I completed the chapter-6 learning today with all concepts that I learned:

1. Arrays and creating them and their examples  
   Arrays are collection of indexed elements.

The commands learned are:

1. To declare empty array

```bash
declare -a names        # Normal array
declare -ar names       # Read-only array
```

2. To loop through array

```bash
for item in "${names[@]}"; do
  echo "$item"
done
```
