#============================================================
# Dev Swiss Army Image
#
# Purpose:
# - Portable development environment
# - No application code
# - No runtime services
#
# Philosophy:
# - This image is a TOOLBOX, not an app
# - Code is cloned at runtime and removed later
#============================================================

FROM mcr.microsoft.com/devcontainers/base:ubuntu

# Prevent interactive prompts during package installs
ENV DEBIAN_FRONTEND=noninteractive

# ------------------------------------------------------------
# Native build tools (C/C++, native extensions, compilation)
# ------------------------------------------------------------
RUN apt-get update && apt-get install -y \
    build-essential \
    make \
    pkg-config \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# ------------------------------------------------------------
# Core developer CLI utilities
# ------------------------------------------------------------
RUN apt-get update && apt-get install -y \
    jq \
    tree \
    htop \
    tmux \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# ------------------------------------------------------------
# Network & debugging tools
# ------------------------------------------------------------
RUN apt-get update && apt-get install -y \
    curl \
    wget \
    iputils-ping \
    netcat \
    dnsutils \
    lsof \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# ------------------------------------------------------------
# Archive & compression utilities
# ------------------------------------------------------------
RUN apt-get update && apt-get install -y \
    zip \
    unzip \
    xz-utils \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# ------------------------------------------------------------
# SSL / certificates (explicit for clarity)
# ------------------------------------------------------------
RUN apt-get update && apt-get install -y \
    openssl \
    ca-certificates \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# ------------------------------------------------------------
# Git (required for private repository workflow)
# ------------------------------------------------------------
RUN apt-get update && apt-get install -y \
    git \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# ------------------------------------------------------------
# NOTE:
# - No CMD
# - No ENTRYPOINT
# - Runtime behavior is controlled by docker-compose
# ------------------------------------------------------------
