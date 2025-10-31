#!/bin/bash

# starts some jobs
cat /dev/random > /dev/null &
ping google.com > /dev/null &
jobs -l
echo "some jobs are started"

# disown command called to remove all the jobs
disown -a
echo "all the jobs are removed"
jobs -l # displays all the jobs
