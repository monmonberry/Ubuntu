#!/bin/bash

# This script is for part five of the assignment - File System Management with Scripts.
# This script will search home directories and ensure that content
# is only accessible by the owner.
# Author: Monika


# Find the directories and print them, then print with exec and chmod 700 them.
find /home -mindepth 1 -maxdepth 1 -type d -not -perm 700  -printf "%m\t%p\n" -exec chmod$


