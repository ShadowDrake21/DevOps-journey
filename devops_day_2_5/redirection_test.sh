#!/bin/bash
set -euo pipefail
exec > >(tee -a redirection.log) 2>&1
echo "Start $(date)"
ls /etc/passwd
ls /notfound
echo "Finish $(date)"
