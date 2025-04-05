#!/bin/bash

# (1) List all .tmp files in /tmp
echo "Listing .tmp files in /tmp:"
ls /tmp/*.tmp

# (2) Remove all .tmp files
rm -f /tmp/*.tmp

# (3) Confirm deletion by listing /tmp again
echo "After deletion, listing files in /tmp:"
ls /tmp



