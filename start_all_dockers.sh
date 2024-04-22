#!/bin/bash

# Define the base directory containing the service directories
BASE_DIR="./services"
export BASE_DOMAIN_NAME="husseindajani.tech"  # Ensure this is exported properly

# Add domain to /etc/hosts if it's not already there
# Uncomment below to add the domain to /etc/hosts on script execution
#if ! grep -q "$BASE_DOMAIN_NAME" /etc/hosts; then
#    echo "Adding $BASE_DOMAIN_NAME to /etc/hosts"
#    echo "127.0.0.1 $BASE_DOMAIN_NAME www.$BASE_DOMAIN_NAME" | sudo tee -a /etc/hosts > /dev/null
#fi

# Define available services
declare -A services
services=(
    ["onlyoffice"]="onlyoffice-docker"
    ["pydio"]="pydio-docker"
    ["reverseproxy"]="reverseproxy-docker"
    ["wordpress"]="wordpress-docker"
)

# Check usage
if [ $# -lt 1 ]; then
    echo "Usage: $0 <command> [service-name]"
    echo "Commands:"
    echo "  up        Start a specific service"
    echo "  down      Stop a specific service"
    echo "  up-all    Start all services"
    echo "  down-all  Stop all services"
    exit 1
fi

cd "$BASE_DIR"

# Ensure the proxy-main network exists
docker network create proxy-main || true  # This will create the network if it does not exist, otherwise do nothing

command=$1
service_name=$2

case $command in
    up|down)
        if [ -z "$service_name" ]; then
            echo "Please specify a service name to $command. Choose from: ${!services[@]}"
            exit 1
        fi
        if [ -z "${services[$service_name]}" ]; then
            echo "Invalid service: $service_name. Available services are: ${!services[@]}"
            exit 1
        fi
        SERVICE_DIR=${services[$service_name]}
        if [ "$command" = "up" ]; then
            echo "Starting $SERVICE_DIR containers..."
            cd "$SERVICE_DIR"
            if [ -f .env ]; then
                sed -i "s/VIRTUAL_HOST=.*/VIRTUAL_HOST=$BASE_DOMAIN_NAME/" .env
            fi
            docker compose up -d
            echo "$SERVICE_DIR has been started."
        else
            echo "Stopping $SERVICE_DIR containers and removing volumes..."
            cd "$SERVICE_DIR"
            docker compose down -v
            echo "$SERVICE_DIR has been stopped."
        fi
        cd - > /dev/null
        ;;
    up-all)
        for service_dir in "${services[@]}"; do
            echo "Starting all containers in $service_dir..."
            cd "$service_dir"
            if [ -f .env ]; then
                sed -i "s/VIRTUAL_HOST=.*/VIRTUAL_HOST=$BASE_DOMAIN_NAME/" .env
            fi
            docker compose up -d
            cd - > /dev/null
        done
        echo "All services have been started."
        ;;
    down-all)
        for service_dir in "${services[@]}"; do
            echo "Stopping all containers in $service_dir and removing volumes..."
            cd "$service_dir"
            docker compose down -v
            cd - > /dev/null
        done
        echo "All services have been stopped."
        ;;
    *)
        echo "Invalid command: $command"
        echo "Valid commands are: up, down, up-all, down-all"
        exit 1
        ;;
esac

echo "Operation completed successfully."
