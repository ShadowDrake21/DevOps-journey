#!/bin/bash

ping google.com > /dev/null &
jobs -l
disown -h %1
exit
