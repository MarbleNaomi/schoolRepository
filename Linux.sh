#!/bin/bash

LOG_FILE="Linux.log"

{
    sudo apt-get update && sudo apt-get upgrade -y
} >> "$LOG_FILE" 2>&1

#notify success
echo "Update completed, check $LOG_FILE"