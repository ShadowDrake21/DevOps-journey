#!/bin/bash
# full_day_2_1_integration.sh

set -euo pipefail
log="/tmp/full_day_2_1_$(date +%F).log"
exec > >(tee -a "$log") 2>&1

echo "=== SYSTEM AUDIT $(date) ==="
echo "--- Disk Usage ---"
df -h

echo "--- Process Check ---"
ps aux --sort=-%cpu | head -5

echo "--- Network Interfaces ---"
ip addr show
