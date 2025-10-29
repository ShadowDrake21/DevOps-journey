#!/bin/bash
# Redirection script

exec > >(tee -a output.log) 2>&1
echo "Starting process at $(date)"
ls /nonexisten
echo "Finished."
