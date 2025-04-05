#!/bin/bash

# Step 1: Show all .log files in /var/log
echo "Log files before cleanup:"
ls -lh /var/log/*.log 2>/dev/null

# Step 2: Save logs in a compressed backup
tar -czvf /var/log/log_backup_$(date +%Y%m%d).tar.gz /var/log/*.log 2>/dev/null
echo "Logs saved in backup file."

# Step 3: Clear the log files
> /var/log/*.log

# Step 4: Confirm logs are cleared
echo "Log files after cleanup:"
ls -lh /var/log/*.log 2>/dev/null
