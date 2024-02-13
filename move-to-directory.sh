#!/bin/bash

directory="negpod_4-q1"

if [ ! -d "$directory" ]; then
    mkdir "$directory"
    echo "Directory created successfully."
else
    echo "Directory already exists."
fi

# Move files to the directory
mv main.sh students-list_1023.txt select-emails.sh student-emails.txt "$directory/"

echo "All the 4 files moved successfully to $directory."
