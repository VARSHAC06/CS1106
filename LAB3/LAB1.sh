#!/bin/bash

mkdir -p ~/Documents/Backup

find / -type f -name "*.c" -exec cp {} ~/Documents/Backup/ \; 2>/dev/null

cd ~/Documents

tar -czf Backup.tar.gz Backup

rm -rf ~/Documents/Backup

echo "Backup and archive completed successfully!"


