#!/bin/bash

echo "===== SYSTEM INFO ====="
echo "User: $(whoami)"
echo "Hostname: $(hostname)"
echo "Uptime: $(uptime -p)"
echo "Disk usage:"
df -h | grep "/dev/"
echo "RAM usage:"
free -h
echo "Log generated on $(date)" >> sysinfo.log
bash sysinfo.sh >> sysinfo.log
