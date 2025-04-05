#!/bin/bash

TIMESTAMP=$(date +%Y%m%d_%H%M%S)
BACKUP_DIR="/backups/home_backup_$TIMESTAMP"
mkdir -p $BACKUP_DIR

cp -a /home $BACKUP_DIR/

tar -czvf $BACKUP_DIR.tar.gz -C /backups "home_backup_$TIMESTAMP"

if tar -tzf $BACKUP_DIR.tar.gz &>/dev/null; then
    echo "Backup successful: $BACKUP_DIR.tar.gz"
else
    echo "Backup failed!"
fi

