#! /bin/bash
DATE=$(date +%F)
tar -czvf backup_$DATE.tar.gz ../devops_day1
echo "Backup created: backup_$DATE.tar.gz"
