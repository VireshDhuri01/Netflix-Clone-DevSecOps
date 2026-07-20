#!/bin/bash

set -e

echo "Updating packages..."
sudo apt update

echo "Installing prerequisites..."
sudo apt install -y curl gpg apt-transport-https

echo "Creating keyring directory..."
sudo mkdir -p /etc/apt/keyrings

echo "Adding Helm GPG key..."
curl -fsSL https://baltocdn.com/helm/signing.asc | \
gpg --dearmor | \
sudo tee /etc/apt/keyrings/helm.gpg > /dev/null

echo "Adding Helm repository..."
echo "deb [signed-by=/etc/apt/keyrings/helm.gpg] https://baltocdn.com/helm/stable/debian/ all main" | \
sudo tee /etc/apt/sources.list.d/helm-stable-debian.list

echo "Updating package lists..."
sudo apt update

echo "Installing Helm..."
sudo apt install -y helm

echo "Helm installed successfully!"
helm version
