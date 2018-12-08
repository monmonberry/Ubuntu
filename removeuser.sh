
#!/bin/bash

# This script is for part one of the assignment - Automated Account Management.
# It will archive user accounts and remove users.
# Author: Monika

# Variables
archive="/home/archive/"


# Input a single arguement (Username)
if [ $# != 1 ]; then
        echo "Useage: $0 username"
        exit 1
fi

# The username is echoed using the default variable $1.
echo "The username is: $1"

# Use the Interfield Separator (IFS) to read the username information fields.

while IFS=':' read -r  username password userID groupID gecos homedirectory she$

if [ $username = $1 ]; then
        echo "$username $homedirectory"
# Archive user and home directory to tar.gz
        tar -cpzf $archive$1.tar.gz $homedirectory
# Delete user and remove home directory
        userdel -r $1
fi

# Redirect the passwords to done to complete the process.
done < /etc/passwd
