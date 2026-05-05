#!/bin/bash

echo "⚠️  Nuking ALL Docker data..."

# Stop all running containers
sudo docker stop $(sudo docker ps -q) 2>/dev/null

# Remove all containers
sudo docker rm -f $(sudo docker ps -aq) 2>/dev/null

# Remove all images
sudo docker rmi -f $(sudo docker images -q) 2>/dev/null

# Remove all volumes
sudo docker volume rm $(sudo docker volume ls -q) 2>/dev/null

# Remove all networks (except default ones)
sudo docker network prune -f

# Remove build cache
sudo docker builder prune -a -f

# Full system prune (extra cleanup layer)
sudo docker system prune -a --volumes -f

echo "✅ Docker is completely wiped."
