#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
LOG_FILE="$SCRIPT_DIR/log"

if [ -e "$LOG_FILE" ]; then
    echo "Creating log file..."
else
    touch "$LOG_FILE"
fi

git add . && git status >> "./log" && git commit -m "$1" && git push && echo -e "\nUpload complete!" >> "./log"