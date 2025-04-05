#!/bin/bash

mkdir -p /var/log/backups

ARCHIVE_NAME="/var/log/backups/backup_$(date +%Y%m%d).tar.gz"

tar -czvf $ARCHIVE_NAME /var/log/*.log 2>/dev/null
`
echo "Created archive:"
ls -lh $ARCHIVE_NAME

