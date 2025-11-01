#!/usr/bin/env bash
LOG_DIR="/home/$USER/system_logs"
LATEST_LOG=$(ls -t "$LOG_DIR" | head -1)
cp "$LOG_DIR/$LATEST_LOG" "$LOG_DIR/reports_sent/"
echo "[Report Sender] Sent: $LATEST_LOG"
