#!/usr/bin/env bash

XXXX="ca3frontend"
DROPLET_URL="157.230.121.167"

echo "#####################"
echo "Building the frontend project" 
echo "#####################"
npm run build

echo "#####################"
echo "Deploying Frontend project..."
echo "#####################"

scp -r ./build/* root@$DROPLET_URL:/var/www/$XXXX