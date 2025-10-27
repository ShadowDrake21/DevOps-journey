#!/bin/bash
# resource_monitor.sh

OUTPUT_LOG="/tmp/system_report_$(date +%F).log"

log_section() {
	echo "---- $1 ---- $(date '+%F %H:%M:%S')"
}

{
	echo "==== SYSTEM REPORT ===="
	echo "Hostname: $(hostname)"
	echo "Generated: $(date '+%F %H:%M:%S')"
	echo "======================="
	echo

	log_section "CPU Usage"
	ps aux --sort=-%cpu | head -6
	
	echo

	log_section "Memory usage"
	free -m
} > "$OUTPUT_LOG" 2>&1


