#!/bin/bash
# A Bash script that monitors CPU and memory processes, display current load average and uptime and saves it to the file

OUTPUT_FILE="/var/log/sysstats.log"

{
echo "$(date +%F_%H-%M)"

echo "Top 5 CPU processes:"
ps aux --sort=-%cpu | head -6

echo

echo "Top 5 Memory processes:"
ps aux --sort=-%mem | head -6

echo

echo "Current load average and uptime:"
uptime
} | tee -a "$OUTPUT_FILE"
