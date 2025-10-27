#!/bin/bash
# Safety Guard Script

DIR_PATH=$1
LOG="/tmp/dirlog.txt"

if [ ! -d "$DIR_PATH" ]; then
	echo "Directory $DIR_PATH does not exist... Creating..."
	echo "Creating a directory $DIR_PATH - $(date "+%F %H:%M")" >> "$LOG"
	mkdir -p "$DIR_PATH"
fi

if [ $? -eq 0 ]; then 
	echo -e "\e[32mSUCCESS\e[0m"
	exit 0
else 
	echo -e "\e[31mERROR\e[0m"
	exit 1
fi
