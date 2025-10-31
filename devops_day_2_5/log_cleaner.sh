#!/bin/bash
TARGET_DIR="/mnt/hdd/DevOps"
find "$TARGET_DIR" -name "system_report_*.log" -mmin +2 -exec rm {} \;

