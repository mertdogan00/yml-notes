#!/bin/bash

# ------------------------------------------------------------
# This script is meant to be run on the HOST (VPS),
# AFTER you exit the dev container.
#
# Purpose:
# - Stop and remove dev containers
# - Remove volumes
# - Delete the cloned project directory
#
# WARNING:
# - Do NOT run this from inside the container
# - Running docker compose down inside the container
#   will terminate your own session
# ------------------------------------------------------------

docker compose down -v || true

# Remove the cloned repository from the host filesystem
rm -rf project

echo "🔥 Environment fully cleaned on the host."
