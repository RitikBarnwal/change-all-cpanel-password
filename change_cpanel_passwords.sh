#!/bin/bash

# Define the new password for all cPanel accounts
NEW_PASSWORD="TextraHost"

# Get all cPanel account usernames
ACCOUNTS=$(whmapi1 listaccts | grep -oP '(?<=user: )\S+')

# Loop through each account and change the password
for USER in $ACCOUNTS; do
    echo "Changing password for: $USER"
    whmapi1 passwd --user="$USER" --password="$NEW_PASSWORD"
    
    if [ $? -eq 0 ]; then
        echo "Password changed successfully for $USER"
    else
        echo "Failed to change password for $USER"
    fi
done

echo "All cPanel account passwords have been changed."
