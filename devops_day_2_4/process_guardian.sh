#!/bin/bash
THRESHOLD=50
LOG="$HOME/process_guardian.log"

echo "==== Process Guardian started at $(date) ====" >> "$LOG"

ps -eo pid,comm,%cpu,%mem --sort=-%cpu | head -n 10 >> "$LOG"

while read -r pid cmd cpu mem; do
	if (( ${cpu%.*} > THRESHOLD )); then
		echo "$(date): Process $cmd (PID $pid) using ${cpu}% CPU" >> "$LOG"
		kill -15 "$pid" 2>/dev/null
		echo "Process $pid terminated" >> "$LOG"
	fi
done < <(ps -eo pid,comm,%cpu,%mem --sort=-%cpu | awk 'NR>1 && $3>50')

echo "==== Guardian finished ====" >> "$LOG"
