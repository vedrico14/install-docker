#!/bin/bash

# Update package list and install dependencies
sudo apt-get update
sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

# Add the GPG key for the official Docker repository to your system
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Add the Docker repository to APT sources:
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"

# Update the package list to include Docker packages
sudo apt-get update

# Install Docker Engine
sudo apt install -y docker-ce

# Output Docker version to verify installation
docker --version

echo "Docker installation completed successfully."
