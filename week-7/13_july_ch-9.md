- [Back to Homepage](/README.md)

# 13 July 2025 Report - Day 49 - Debugging Shell Programs

## Content
Today I continued reading the research paper and also made the notes of chapter-8 for video and also for chapter-9. Continued learning the chapter-9 and the topics covered are:

1. Debugger Functions 

2. commands

3. Stepping

4. Breakpoints

The commands I learned are:

1. Debugger Main Function
```bash
trap '_steptrap $((LINENO -29))' DEBUG
```

2. commands *cmd loops* script
```bash
function _cmdloop {
  local cmd args
  while read -e -p "bashdb> " cmd args; do
    case $cmd in
      \?|h ) _menu ;;
      bc ) _setbc $args ;;
      bp ) _setbp $args ;;
      cb ) _clearbp $args ;;
      ds ) _displayscript ;;
      g  ) return ;;
      q  ) exit ;;
      s  ) let _steps=${args:-1}; return ;;
      x  ) _xtrace ;;
      !* ) eval ${cmd#!} $args ;;
      *  ) _msg "Invalid command: '$cmd'" ;;
    esac
  done
}
```

3. To quit the debugger
```bash
bashdb option
```

4. break condition comaand
```bash
bc [condition]
```


