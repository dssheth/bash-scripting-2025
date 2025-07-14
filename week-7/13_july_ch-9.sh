#! /bin/bash

## the script of the debugger function.
function _steptrap {
  _curline=$1   # Line number in the guinea pig script

  # Show execution trace if tracing is on
  (( $_trace )) && _msg "$PS4 line $_curline: ${_lines[$_curline]}"

  # Step control: decrement step counter
  if (( $_steps >= 0 )); then
    let _steps="$_steps - 1"
  fi

  # Decision: should we pause and enter debugger?
  if _at_linenumbp ; then
    _msg "Reached breakpoint at line $_curline"
    _cmdloop
  elif [ -n "$_brcond" ] && eval $_brcond; then
    _msg "Break condition $_brcond true at line $_curline"
    _cmdloop
  elif (( $_steps == 0 )); then
    _msg "Stopped at line $_curline"
    _cmdloop
  fi
}

## the bashdb commadsidiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii
# this leads to start or resume the script
bashdb> g


## the script of _bc function code
function _setbc {
  if [ -z "$1" ]; then
    _brcond=""
    _msg "Break condition cleared"
  else
    _brcond="$*"
    _msg "Break condition set to: $*"
  fi
}


# to cleanup file
function _cleanup {
  rm -f $_debugfile
}

# execution tracing
(( $_trace )) && _msg "$PS4 line $_curline: ${_lines[$_curline]}"

## break point
bc '(( $x < 0 ))'


# display script with ds
bashdb> ds