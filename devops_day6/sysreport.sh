#!/bin/bash
# Mini-mission on system knowledge of Linux

FILE_PATH="/home/$USER/system_report.txt"

echo "" > $FILE_PATH

echo "Disk usage df -h:" >> $FILE_PATH
df -h >> $FILE_PATH

echo "" >> $FILE_PATH

echo "Memory usage:" >> $FILE_PATH
free -m >> $FILE_PATH

echo "" >> $FILE_PATH

echo "Top 5 CPU processes:" >> $FILE_PATH
ps aux --sort=-%cpu | head -6 >> $FILE_PATH

echo "" >> $FILE_PATH
