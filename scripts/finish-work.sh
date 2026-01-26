#!/bin/bash
set -e

# ------------------------------------------------------------
# This script is meant to be run INSIDE the dev container.
#
# Purpose:
# - Review git status
# - Commit and push all changes
# - Remove the local project directory afterwards
#
# IMPORTANT:
# - Make sure you really want to commit EVERYTHING
# - After this runs, the local workspace is deleted
# ------------------------------------------------------------

WORKDIR="project"

# Move into the project directory
cd "$WORKDIR"

echo "▶ Showing current git status"
git status

# Stage and commit all changes
echo "▶ Committing changes"
git add .
git commit -m "Work session complete"

# Push to the remote repository
echo "▶ Pushing to remote"
git push

# Go back to parent directory
cd ..

# Remove the local project directory
echo "▶ Removing local workspace directory"
rm -rf "$WORKDIR"

echo "✔ Work finished and local workspace cleaned"
