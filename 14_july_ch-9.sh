#! /bin/bash

# execution tracing
(( $_trace )) && _msg "$PS4 line $_curline: ${_lines[$_curline]}"


# sample debugger
[bash]$ bashdb ndu
bash Debugger version 1.0
Stopped at line 0
bashdb> ds
1:
for dir in ${*:-.}; do
2:
if [ -e $dir ]; then
3:
result=$(du -s $dir | cut -f 1)
4:
let total=$result*1024
5:
6:
echo -n "Total for $dir = $total bytes"
7:
8:
if [ $total -ge 1048576 ]; then
9:
echo " ($((total/1048576)) Mb)"
10:
elif [ $total -ge 1024 ]; then
11:
echo " ($((total/1024)) Kb)"
12:
fi
13:
fi
14:
done

bashdb> s
Stopped at line 2
bashdb> bp 4
Breakpoint set at line 4
bashdb> bp 8
Breakpoint set at line 8
bashdb> bp 11
Breakpoint set at line 11
bashdb> ds
1:
for dir in ${*:-.}; do
2: >
if [ -e $dir ]; then
3:
result=$(du -s $dir | cut -f 1)
4:*
let total=$result*1024
5:
6:
echo -n "Total for $dir = $total bytes"
7:
8:*
if [ $total -ge 1048576 ]; then
9:
echo " ($((total/1048576)) Mb)"
10:
elif [ $total -ge 1024 ]; then
11:*
echo " ($((total/1024)) Kb)"
12:
fi
13:
fi
14:
done
bashdb> g
Reached breakpoint at line 4
bashdb> !echo $total
6840032
bashdb> cb 8
Breakpoint cleared at line 8
bashdb> ds
for dir in ${*:-.}; do
    if [ -e $dir ]; then
    result=$(du -s $dir | cut -f 1)
    let total=$result*1024

    echo -n "Total for $dir = $total bytes"

        if [ $total -ge 1048576 ]; then
            echo " ($((total/1048576)) Mb)"
        elif [ $total -ge 1024 ]; then
            echo " ($((total/1024)) Kb)"
        fi
    fi
done
bashdb> s 
#Stopped at line 2
bashdb> bp 4
#Breakpoint set at line 4
bashdb>      bp 8
#Breakpoint set at line 8
bashdb> bp 11
#Breakpoint set at line 11


for dir in ${*:-.}; do
>  if [ -e $dir ]; then
        result=$(du -s $dir | cut -f 1)
        let total=$result*1024
        echo -n "Total for $dir = $total bytes"
        
        if [ $total -ge 1048576 ]; then 
            echo " ($((total/1048576)) Mb)"
        elif [ $total -ge 1024 ]; then              
            echo " ($((total/1024)) Kb)"   
        fi
    fi
done

bashdb> g
#Reached breakpoint at line 4

bashdb> !echo $total
#6840032
bashdb> cb 8
#Breakpoint cleared at line 8
bashdb> ds

for dir in ${*:-.}; do
    if [ -e $dir ]; then
    result=$(du -s $dir | cut -f 1)
    let total=$result*1024

    echo -n "Total for $dir = $total bytes"

        if [ $total -ge 1048576 ]; then
            echo " ($((total/1048576)) Mb)" 
        elif [ $total -ge 1024 ]; then
            echo " ($((total/1024)) Kb)"    
        fi  
    fi
done
bashdb> bp
#Breakpoints at lines: 4 11

#Break on condition:
bashdb> !total=5600
bashdb> g
Total for . = 5600 bytes (5 Kb)
#Reached breakpoint at line 11
bashdb> cb
#All breakpoints have been cleared
bashdb> ds

for dir in ${*:-.}; do
    if [ -e $dir ]; then
        result=$(du -s $dir | cut -f 1)
        let total=$result*1024

        echo -n "Total for $dir = $total bytes"

        if [ $total -ge 1048576 ]; then
            echo " ($((total/1048576)) Mb)"
        elif [ $total -ge 1024 ]; then
            echo " ($((total/1024)) Kb)"
            fi
    fi
done
bashdb> g
