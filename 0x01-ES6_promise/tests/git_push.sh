#!/bin/bash

# Get the filename from the command line argument
FILE=$1

# Check if the user provided a filename
if [ -z "$FILE" ]
then
    echo "Usage: ./git_push_file.sh <file_name>"
    exit 1
fi

# Add the specified file
git add $FILE

# Get the base filename without the path
BASENAME=$(basename $FILE)

# Commit with the filename as the commit message
git commit -m "Update $BASENAME"

# Push changes to the remote repository
git push
