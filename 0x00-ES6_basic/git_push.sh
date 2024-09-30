#!/bin/bash

# Check if the user provided a commit message and file name
if [ -z "$1" ] || [ -z "$2" ] || [ -z "$3" ]
then
    echo "Usage: ./git_push.sh <file_name> <commit_message> <username> <access_token>"
    exit 1
fi

# Set username and personal access token
USERNAME=$3
ACCESS_TOKEN=$4

# Add the specified file
git add $1

# Commit with the provided message
git commit -m "$2"

# Push changes to the remote repository using username and personal access token
git push https://$USERNAME:$ACCESS_TOKEN@github.com/your_username/your_repository.git
