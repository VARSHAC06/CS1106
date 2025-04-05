#!/bin/bash

# 1. Create a 'backup' directory
mkdir -p backup

# 2. Copy all .txt files from the current directory to the 'backup' directory
cp *.txt backup/

# 3. List contents of the 'backup' directory
ls backup/


