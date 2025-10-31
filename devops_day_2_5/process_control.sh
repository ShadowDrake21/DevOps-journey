#!/bin/bash
trap "echo 'SIGTERM caught! Cleaning up...'; exit" SIGTERM
while true; do
	echo "Running... PID $$"
	sleep 2
done
