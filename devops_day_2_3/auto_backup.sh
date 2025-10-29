#!/bin/bash
DATE=$(date +%F)
SRC="/mnt/hdd/DevOps/devops_day_2_3"
DEST="/mnt/hdd/DevOps/devops_$DATE.tar.gz"

tar -czf "$DEST" "$SRC" > /tmp/backup.log 2>&1
logger "Backup finished at $(date): $DEST"
