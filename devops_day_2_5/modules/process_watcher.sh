#!/usr/bin/env bash
echo "[Process Watcher] Checking for abnormal processes..."
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head -10
