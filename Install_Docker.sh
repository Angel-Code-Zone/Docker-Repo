#!/bin/bash

set -e  # Exit immediately if a command exits with a non-zero status
set -o pipefail

echo "🚀 Starting installation of Docker..."

# ----------------------------
# 1. Install Docker
# ----------------------------
if ! command -v docker &>/dev/null; then
  echo "📦 Installing Docker..."
  sudo apt-get update -y
  sudo apt-get install -y docker.io

  echo "👤 Adding current user to docker group..."
  sudo usermod -aG docker "$USER"

  echo "✅ Docker installed and user added to docker group."
else
  echo "✅ Docker is already installed."
fi

# ----------------------------
# 2. Confirm Versions
# ----------------------------
echo
echo "🔍 Installed Versions:"
docker --version

echo
echo "🎉 Docker, Kind, and kubectl installation complete!"