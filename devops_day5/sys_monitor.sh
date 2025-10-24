#!/bin/bash
# Simple Linux monitoring script

LOG_DIR=~/syslogs
LOG_FILE=$LOG_DIR/system_$(date +%F).log

mkdir -p $LOG_DIR

echo "==== $(date '+%F %T') ====" >> $LOG_FILE
echo "Uptime:" >> $LOG_FILE
uptime >> $LOG_FILE
echo "" >> $LOG_FILE

echo "Top 5 CPU-consuming processes:" >> $LOG_FILE
ps -eo pid,comm,%cpu,%mem --sort=-%cpu | head -n 6 >> $LOG_FILE
echo "" >> $LOG_FILE

echo "Memory usage:" >> $LOG_FILE
free -h >> $LOG_FILE
echo "" >> $LOG_FILE

echo "Disk usage:" >> $LOG_FILE
df -h | grep '^/dev' >> $LOG_FILE
echo "" >> $LOG_FILE

echo "-------------------------------" >> $LOG_FILE
