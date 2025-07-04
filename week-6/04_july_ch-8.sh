#!/bin/bash

# to see the job number and process ID
sleep 10 &

# To print all process IDs
jobs -p

# To print those whose status has changed
jobs -n

# To print jobs that are running
jobs  -r

# To printjobs that are stopped
jobs -s

# To execute a command
jobs -x %3


