#!/bin/bash
set -e

# ------------------------------------------------------------
# This script is meant to be run on the HOST (VPS),
# NOT inside the dev container.
#
# Purpose:
# - Clone the private repository onto the server filesystem
# - Prepare the workspace directory
#
# After this script:
# - Code exists on the VPS
# - NO container is running yet
# - You must open VS Code and "Reopen in Container"
# ------------------------------------------------------------

REPO_SSH="git@github.com:your-org/your-private-repo.git"
WORKDIR="project"

echo "▶ Cloning repository into host filesystem..."
git clone "$REPO_SSH" "$WORKDIR"

echo "✔ Repository cloned on the server."
echo "➡ Now open VS Code and select: 'Reopen in Container'"
