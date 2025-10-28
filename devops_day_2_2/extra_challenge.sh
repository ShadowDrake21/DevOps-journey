#!/bin/bash

#trap 'echo "Process interrupted! Cleaning up that mess..."; kill 0; exit 1' SIGINT SIGTERM

PROCESSES=("vmstat 1" "iostat 1" "ping 8.8.8.8")
LOG_FILE="/var/log/devops_monitor.log"

cleanup() {
	echo "Process interrupted! Cleaning up that mess..." | tee -a "$LOG_FILE"
	trap - SIGINT SIGTERM
	kill $(jobs -p) 2>/dev/null
	wait
	echo "All monitoring stopped at $(date)" >> "$LOG_FILE"
	exit 1
}

trap cleanup SIGINT SIGTERM

for i in "${PROCESSES[@]}"; do 
	echo "Process $i started" >> "$LOG_FILE"
	$i >> "$LOG_FILE" 2>&1 &
done

echo "Running... Press Ctrl+C to stop."
while true; do
	echo "Working..."
	sleep 2
done
