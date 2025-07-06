---
title: General
layout: default
---

# 06 July 2025 Report - Day 42 - Process Handling

## Content

Today I learnt about other commands in bash and also continuted with the chapter-8. The topics covered and learnt today are:

1. System V vs BSD systems for ps

2. trap : Traps and Functions
To respond appropriately to abnormal events in programs.

3. Process ID Variables and temporary files         
Understood task-2

4. Ignoring Signals

5. disown and resetting traps


Commands learnt are:

1. Syntax of trap
```bash
trap cmd sig1 sig2 ...
```

2. Functions in trap
```bash
settrap ( ) {
trap "echo 'You hit control-C!'" INT
}
settrap
while true; do
sleep 60
done
```

3. To know Process ID
```bash
#using $$
echo "$$"

#using $!
echo "$!"
```

4. `HUP` command: To kill the process that receives it
```bash
#simple function
function ignorehup {
trap "" HUP
eval "$@"
}
```

5. Use `nohup` to prevent HUP terminating the command
```bash
nohup "$@" > logfile 2>&1 &
```

6. `disown` command : takes the argument of job and remove from list
```bash
#similar as nohup
disown -h

# to apply to all jobs
disown -a


# to apply to running jobs
disown -r
```

7. To reset a trap: use `-`
```bash
trap - sig1 sig2...
```