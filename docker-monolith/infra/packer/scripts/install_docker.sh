#!/bin/bash

echo "asdfsadf Hello World!" > 1.txt

#Update the apt package index and install packages to allow apt to use a repository over HTTPS
apt-get update
sleep 3m
apt-get install ca-certificates curl gnupg lsb-release

# Add Docker’s official GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

# Set up the stable repository
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] \
  https://download.docker.com/linux/ubuntu \ $(lsb_release -cs) stable" |
  tee /etc/apt/sources.list.d/docker.list > /dev/null

# Configure Docker
groupadd docker
usermod -aG docker $USER
