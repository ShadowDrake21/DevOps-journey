#!/bin/bash
set -euo pipefail
crontab -l > current_cron
echo "0 */3 * * * /mnt/hdd/DevOps/devops_day_2_5/system_maintenance_suite.sh" >> current_cron
crontab current_cron && rm current_cron
