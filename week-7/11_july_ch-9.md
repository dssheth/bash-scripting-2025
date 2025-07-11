- [Back to Homepage](/README.md)

# 11 July 2025 Report - Day 47 - Debugging Shell Programs

## Content

Today I discussed the project for with PI. Then continued the learning the chapter-9 and topics covered are:

1. A bash debugger and its structure

2. driver script and exec       
driver scrip tis called *bashdb*

3. The preamble

The commands and script learnt are:

1. driver script
```bash
# bashdb - a bash debugger
# Driver Script: concatenates the preamble and the target
# and then executes the new script.
echo 'bash Debugger version 1.0'
_dbname=${0##*/}
if (( $# < 1 )) ; then
    echo "$_dbname: Usage: $_dbname filename" >&2
    exit 1
fi
_guineapig=$1
if [ ! -r $1 ]; then
    echo "$_dbname: Cannot read file '$_guineapig'." >&2
    exit 1
fi
shift
    _tmpdir=/tmp
    _libdir=.
    _debugfile=$_tmpdir/bashdb.$$ # temporary file for scrit being debugged
cat $_libdir/bashdb.pre $_guineapig > $_debugfile
exec bash $_debugfile $_guineapig $_tmpdir $_libdir "$@"
```
2. `exec` command
```bash
exec bash  # scriptname and arguments
```

