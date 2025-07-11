#! /bin/bash

_debugfile=$0       # Current (debugged) script's path
_guineapig=$1       # Original script name
_tmpdir=$2          # Temp directory path
_libdir=$3          # Location of bashdb.pre + bashdb.fns
shift 3             # Shift away 3 debug args; remaining are user args


# to refine line no
$((LINENO - 29))
