#!/bin/bash
# Automatically add, commit and push changes to GitHub

BRANCH=$(git rev-parse --abbrev-ref HEAD)
DATE=$(date +"%F %T")

git add .
git commit -m "Auto commit on $DATE"
git push origin $BRANCH

echo "Changes pushed to $BRANCH at $DATE"
