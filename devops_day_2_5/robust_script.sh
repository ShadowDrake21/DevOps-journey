#!/bin/bash
set -euo pipefail
trap 'echo "Error on line $LINENO"; exit 1' ERR
trap 'echo "Caught SIGINT, cleaning up..."; exit 0' SIGINT SIGTERM

LOG="/tmp/demo.log"
exec > >(tee -a "$LOG") 2>&1

echo "[$(date)] Starting job..."
sleep 3
echo "[$(date)] Job done!"
