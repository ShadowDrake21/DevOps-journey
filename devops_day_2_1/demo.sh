#!/bin/bash
# demo.sh

echo "Script started: $(date)"
USER_COUNT=$(who | wc -l)
echo "Currently logged users: $USER_COUNT"

ls /tmp/test_dir > /dev/null 2>&1
if [ $? -ne 0 ]; then 
	echo "Directory /tmp/test_dir not found, creating..."
	mkdir -p /tmp/test_dir
fi
