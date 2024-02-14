#!/bin/bash

# Configuration variables
remote_host="2f05c1f8800b.3be8ebfc.alu-cod.online"
remote_username="2f05c1f8800b"
remote_password="d4a1d225d0abda9549d8"
remote_directory="/summative/1023-2024j"
local_directory="negpod_4-q1"

# Function to execute the backup
perform_backup() {
    echo "Starting backup..."

    # Use rsync to securely copy files to the remote server
    rsync -avz -e "sshpass -p $remote_password ssh -o StrictHostKeyChecking=no" "$local_directory" "$remote_username@$remote_host:$remote_directory"

    # Check if rsync command was successful
    if [ $? -eq 0 ]; then
        echo "Backup completed successfully."
    else
        echo "Backup failed. Please check your settings and try again."
    fi
}

# Check if the local directory exists
if [ -d "$local_directory" ]; then
    # Execute backup
    perform_backup
else
    echo "Error: Local directory '$local_directory' not found. Please provide the correct directory path."
fi
