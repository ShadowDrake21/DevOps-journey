#!/bin/bash
# process_monitor.sh
declare -a CRITICAL_PROCS=("nginx" "sshd" "cron")

for proc in "${CRITICAL_PROCS[@]}"; do
	if ! pgrep -x "$proc" > /dev/null; then
		echo "$(date) - ALERT: $proc is NOT running" >> /var/log/proc_alerts.log
	else
		echo "$(date) - OK: $proc running fine"
	fi
done
