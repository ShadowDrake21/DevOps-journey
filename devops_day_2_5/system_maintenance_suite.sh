#!/bin/bash

# Automation of the monitoring, cleanup, and reporting of system health

set -euo pipefail
trap 'echo "Error on line $LINENO"; exit 1' ERR
trap 'echo "Caught SIGINT, cleaning up..."; exit 0' SIGINT SIGTERM

TARGET_DIR="/home/$USER/syslogs"
LOG_FILE="$TARGET_DIR/system_maintenance_$(date '+%F_%H_%M').log"

# Deletion of all old log files
find "$TARGET_DIR" -type f -name "system_maintenance_*.log" -print -delete;

{
	echo "===== System Maintenance Suite ====="
	echo "File system space usage:"
	df -h
	echo
	echo "Estimate file space usage of /mnt:"
	du -h /mnt
	echo
	echo "Free and used memory:"
	free -m
	echo
	echo "Top 5 CPU-consuming services"
	ps aux --sort=-pcpu | head -n 6
	echo
	echo "$USER's home directory:"
	ls -ls "/home/$USER"
} > "$LOG_FILE" 2>&1

echo "[$(date '+%F %H:%M')] Raport is done!"
