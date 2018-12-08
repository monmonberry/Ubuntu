#!/bin/bash

# This script is for part five of the assignment  - File System Management with Scripts.
# This script looks for forbidden files and removes them.
# Author: Monika


# Look through directories
if [ $# != 1 ]; then
        echo "Useage: $0 directory"
        exit 1
fi

# Searching for directories and printing to screen.
directory=$1
echo "The homedirectory is: $directory"


# Find files by extension and delete.
# This first command did not work due to a sparse file issue.
# find $directory -type f \( -name \*.mp3 -or -name \*.aac -or -name \*.mp4 -or -name \
# \*.mov -or -name \*.avi -or -name \*.vid \)  -printf "%k\t%p\n"
find $directory -type f \( -name \*.mp3 -or -name \*.aac -or -name \*.mp4 -or -name \
\*.mov -or -name \*.avi -or -name \*.vid \)  -exec ls -l {} \; -delete
