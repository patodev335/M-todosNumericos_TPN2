#!/bin/bash

if [ -e "./log" ]; then
    echo "Creating log file..."
else
    touch "./log"
fi

git add . && git status >> "./log" && git commit -m "$1" && git push && echo -e "\nUpload complete!" >> "./log"