#!/usr/bin/env bash
set -euo pipefail
trap 'echo "[$(date)] ERROR on line $LINENO" >> main.log' ERR

LOG_DIR="/home/$USER/system_logs"
mkdir -p "$LOG_DIR"

exec > >(tee -a "$LOG_DIR/main_$(date +%F_%H-%M).log") 2>&1

echo "===== Starting DevOps Maintenance Suite ====="
bash modules/system_maintenance_suite.sh
bash modules/process_watcher.sh
bash modules/report_sender.sh
echo "===== All tasks completed successfully ====="
