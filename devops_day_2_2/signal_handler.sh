#!/bin/bash
trap 'echo "Process interrupted! Cleaning up..."; exit 1' SIGINT SIGTERM

echo "Running... press Ctrl+C to stop."
while true; do
	echo "Working..."
	sleep 2
done
