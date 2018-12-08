#!/bin/bash

# This script is for part one of the assignment - Austomated Account Management.
# Author: Monika

#Split IFS on space (which is how the users.txt file was set up).

while IFS=' ' read -r  username homedirectory geocos; do

# Add users using the useradd function.
# -d = home directory. -c = comment (used for geocos). -m home driectory creati$
# -N no usergroups. -s shell.
        useradd -d $homedirectory -c "$gecos" -m -N -s /bin/bash $username

# Generate $password using openssl random function.
        password=`openssl rand -base64 12`

# Set the password using chpassword.
        pwstring="$username:$password"
        echo $pwstring > chpasswd
        echo $pwstring

done < users.txt

