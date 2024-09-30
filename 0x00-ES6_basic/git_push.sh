#!/bin/bash

# Check if the user provided a commit message
if [ -z "$1" ]
then
    echo "Please provide a commit message."
    exit 1
fi

# Add the specified file
git add $1

# Commit with the provided message
git commit -m "$2"

# Push changes to the remote repository
git push
