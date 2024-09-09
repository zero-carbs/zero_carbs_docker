#!/bin/bash

client_repo="https://gitlab.com/zero_carbs/zero_carbs_client.git"
client_path="./zero_carbs_client"

server_repo="https://gitlab.com/zero_carbs/zero_carbs_server.git"
server_path="./zero_carbs_server"

echo "Checking if repositories already exist..."

# Check if the client repository exists and is up-to-date
if [ -d "$client_path" ]; then
    echo "Client repository already exists. Updating..."
    cd "$client_path" || { echo "Error: Could not access the client repository directory"; exit 1; }
    git pull origin main --ff-only || { echo "Error: Failed to update the client repository"; exit 1; }
else
    echo "Cloning client repository..."
    git clone $client_repo "$client_path" || { echo "Error: Cloning of the client repository failed. Aborting."; exit 1; }
fi

# Check if the server repository exists and is up-to-date
if [ -d "$server_path" ]; then
    echo "Server repository already exists. Updating..."
    cd "$server_path" || { echo "Error: Could not access the server repository directory"; exit 1; }
    git pull origin main --ff-only || { echo "Error: Failed to update the server repository"; exit 1; }
else
    echo "Cloning server repository..."
    git clone $server_repo "$server_path" || { echo "Error: Cloning of the server repository failed. Aborting."; exit 1; }
fi

sleep 2
echo "Finished!"
