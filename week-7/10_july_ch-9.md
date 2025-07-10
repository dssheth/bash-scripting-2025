- [Back to Homepage](/README.md)

# 10 July 2025 Report - Day 46 - Debugging Shell Programs

## Content

Today I made notes for chapter-8 and practice some commnands. Then continued with chapter-9 and learnt the commands:

1. Fake Signals:        
Used in trap statements

2. EXIT, ERR, DEBUG, RETURN

3. Debugging Variables

The commands learnt are:
1. EXIT use
```bash
trap 'echo exiting from the script' EXIT
echo 'start of the script'
```

2. ERR use
```bash
function errtrap {
    es=$?
    echo "ERROR: Command exited with status $es."
}
trap errtrap ERR
```

3. DEBUG use
```bash
function dbgtrap
{
        echo "badvar is $badvar"
}
trap dbgtrap DEBUG
...section of code in which the problem occurs...
trap - DEBUG      # turn off the DEBUG trap
```

4. RETURN use 
```bash
function returntrap {
echo "A return occurred"
}
trap returntrap RETURN
function hello {
echo "hello world"
}
hello
```