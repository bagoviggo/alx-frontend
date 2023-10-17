#!/bin/bash

# Define your project directory
project_dir="/home/bagoviggo/dev-stuff/alx/alx-frontend/0x02-CSS_advanced/"


# Function to stage, commit, and push
stage_commit_push() {
    git add .
    for file in $(git status --porcelain | awk '{print $2}'); do
        git commit -m "Add $file"
    done
    git push origin mapping  # Change 'master' if you're using a different branch
}

while true; do
    stage_commit_push
    sleep 70  # Wait for 70 seconds before the next commit
done

