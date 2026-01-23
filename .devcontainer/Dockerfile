#============================================================
# Dockerfile for Python 3.12 Ansible Development Container
#============================================================

FROM mcr.microsoft.com/devcontainers/python:3.12-bookworm

#------------------------------------------------------------
# Set non-interactive frontend for apt-get
#------------------------------------------------------------
ENV DEBIAN_FRONTEND=noninteractive

# ------------------------------------------------------------
# Fix upstream issue: remove expired Yarn APT repository
# (Not needed for Ansible / Python dev)
# ------------------------------------------------------------
RUN rm -f /etc/apt/sources.list.d/yarn.list

# ------------------------------------------------------------
# Install required OS packages
# ------------------------------------------------------------
RUN apt-get update && apt-get install -y --no-install-recommends \
    openssh-client \
    git \
    ca-certificates \
    sshpass \
 && rm -rf /var/lib/apt/lists/*

# ------------------------------------------------------------
# Upgrade pip and install Python tooling
# ------------------------------------------------------------
RUN python3 -m pip install --no-cache-dir --upgrade pip \
 && python3 -m pip install --no-cache-dir \
    ansible-core

# ------------------------------------------------------------
# Default working directory (optional, nice for CLI usage)
# ------------------------------------------------------------
WORKDIR /workspaces
