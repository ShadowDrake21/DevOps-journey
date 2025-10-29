#!/bin/bash
LOG_DIR="$HOME/system_logs"
mkdir -p "$LOG_DIR"
LOGFILE="$LOG_DIR/audit_$(date +%F_%H%M).log"

exec > >(tee -a "$LOGFILE") 2>&1
trap 'echo "Interrupted at $(date)" >> "$LOGFILE"; exit 1' SIGINT SIGTERM

echo "===== System Audit started as $(date) ====="
echo "Disk usage:"; df -h
echo
echo "Top CPU-consuming processes:"; ps aux --sort=-%cpu | head -10
echo
echo "Memory usage:"; free -h
echo
echo "===== Audit finished at $(date) ====="

mail -s "Daily Audit Done" dimka670020040@gmail.com < "$LOGFILE"
