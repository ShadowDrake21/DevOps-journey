#!/bin/bash
LOG="/mnt/hdd/DevOps/system_report_$(date +%F).log"

{
	echo "===== System Report $(date) ====="
	df -h
	free -m
	top -b -n1 | head -10
} >> "$LOG" 2>&1
