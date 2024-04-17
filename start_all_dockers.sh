#!/bin/bash

# Define the base directory containing the service directories
BASE_DIR="./services"
export BASE_DOMAIN_NAME="husseindajani.tech"  # Ensure this is exported properly

# Add domain to /etc/hosts if it's not already there
#if ! grep -q "$BASE_DOMAIN_NAME" /etc/hosts; then
#    echo "Adding $BASE_DOMAIN_NAME to /etc/hosts"
#    echo "127.0.0.1 $BASE_DOMAIN_NAME www.$BASE_DOMAIN_NAME" | sudo tee -a /etc/hosts > /dev/null
#fi

cd "$BASE_DIR"

# Ensure the proxy-main network exists
docker network create proxy-main || true  # This will create the network if it does not exist, otherwise do nothing

# Find and start all services
find . -type f -name 'docker-compose.yml' -exec dirname {} \; | while read service_dir; do
    echo "Starting all containers in $service_dir using domain $BASE_DOMAIN_NAME"
    cd "$service_dir"
    if [ -f .env ]; then
        sed -i "s/VIRTUAL_HOST=.*/VIRTUAL_HOST=$BASE_DOMAIN_NAME/" .env
    fi
    docker compose up -d
    cd - > /dev/null
done

echo "All Docker containers have been started with domain $BASE_DOMAIN_NAME."
