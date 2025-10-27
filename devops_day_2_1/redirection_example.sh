#!/bin/bash
df -h | tee -a /tmp/disk_usage.log
du -sh /home/* 2>/tmp/errors.log
tar -czf /tmp/logs_backup.tar.gz /var/log 2>/dev/null
