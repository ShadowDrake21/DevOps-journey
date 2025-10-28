#!/bin/bash
LOGFILE="/tmp/background_$(date +%H%M%S).log"

echo "Starting background tasks..."
for i in {1..5}; do
	echo "Task $i started" >> "$LOGFILE"
	sleep 5 &
done

#wait
echo "All tasks finished!" >> "$LOGFILE"
