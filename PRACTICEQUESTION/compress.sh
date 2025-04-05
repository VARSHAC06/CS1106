#!/bin/bash

# (1) Create a tar archive of /var/log
tar -cvf /var/log_backup.tar /var/log

# (2) Compress the archive with gzip
gzip /var/log_backup.tar

# (3) List the created archive
echo "List of archives in current directory:"
ls *.tar.gz

