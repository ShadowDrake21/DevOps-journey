#!/bin/bash
# Backup local DevOps folder and push to Git

REPO_DIR=/mnt/hdd/DevOps
BACKUP_DIR=/mnt/hdd/backups
DATE=$(date +%F)

mkdir -p $BACKUP_DIR
tar -czf $BACKUP_DIR/devops_backup_$DATE.tar.gz $REPO_DIR

cd $REPO_DIR
git add .
git commit -m "Daily backup $DATE"
git push origin main

echo "Backup created and pushed: $BACKUP_DIR/devops_backup_$DATE.tar.gz"
