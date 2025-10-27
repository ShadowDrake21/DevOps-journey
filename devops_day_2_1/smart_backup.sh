#!/bin/bash
# Smart backup script

set -euo pipefail

SOURCE_DIR=$1
DESTINATION_DIR=$2
OUTPUT_LOG="/var/log/backup_activity.log"

{
	echo "========================="
	echo "Backup started: $(date '+%F %H:%M:%S')"
	echo "Source: $SOURCE_DIR"
	echo "Destination: $DESTINATION_DIR"
	echo "========================="
} >> "$OUTPUT_LOG"

if [ ! -d "$SOURCE_DIR" ]; then
	echo "Error: the source does not exist!" | tee -a "$OUTPUT_LOG"
	exit 1
fi

if [ ! -d "$DESTINATION_DIR" ]; then
	echo "Destination directory is missing... Creating..." | tee -a "$OUTPUT_LOG"
	mkdir -p "$DESTINATION_DIR"
fi

ARCHIVE_NAME="$DESTINATION_DIR/backup_$(date +%F).tar.gz"

echo "Creating archive: $ARCHIVE_NAME" | tee -a "$OUTPUT_LOG"
tar -czf "$ARCHIVE_NAME" "$SOURCE_DIR" >> "$OUTPUT_LOG" 2>&1

echo "Backup completed successfully on $(date '+%F %H:%M:%S')" | tee -a "$OUTPUT_LOG"
exit 0

