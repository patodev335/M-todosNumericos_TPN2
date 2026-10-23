#!/bin/bash

# 1. Get the absolute path of the directory where this script lives
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
LOG_FILE="$SCRIPT_DIR/log"

# 2. Check and create the log file in the script directory
if [ -e "$LOG_FILE" ]; then
    echo "Creating log file..."
else
    touch "$LOG_FILE"
fi

# 3. Run git commands (always referencing the correct log location)
git add . && git status >> "$LOG_FILE" && git commit -m "$1" && git push && echo -e "\nUpload complete!" >> "$LOG_FILE"
