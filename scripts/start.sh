#!/bin/bash

echo "Starting deployment..."

cd /home/ec2-user/app

echo "Installing dependencies..."
npm install

echo "Stopping old app if running..."
pkill -f node || true

echo "Starting app..."
nohup node src/index.js > output.log 2>&1 &
