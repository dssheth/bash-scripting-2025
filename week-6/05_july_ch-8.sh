#!/bin/bash

#example of kill command
sleep 100 &

kill %1

# if not stop
kill -QUIT %1     

#still stuck
kill -KILL %1      # Force kill

# to kill all jobs
killalljobs -KILL
