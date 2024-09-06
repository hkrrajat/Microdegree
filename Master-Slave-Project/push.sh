#!/bin/bash

# Set variables
REPO_DIR="/root/Microdegree/Master-Slave-Project" # Replace with the path to your repository
COMMIT_MSG=$1 # First argument passed to the script will be the commit message
BRANCH_NAME=${2:-main} # Second argument (optional) is the branch name, defaults to 'main'

# Go to the repository directory
cd $REPO_DIR || exit

# Add changes to git
git add .

# Commit changes with the provided message
if [ -z "$COMMIT_MSG" ]; then
    echo "No commit message provided. Usage: ./push.sh 'commit message' [branch-name]"
    exit 1
else
    git commit -m "$COMMIT_MSG"
fi

# Push to the specified branch
git push origin $BRANCH_NAME

echo "Changes have been pushed to $BRANCH_NAME on GitHub."
