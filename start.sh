#!/bin/bash

echo "======================================"
echo "  Simbioin - Docker Startup"
echo "======================================"
echo ""
echo "Checking container image..."
echo "If this is your first time running Simbioin,"
echo "the image will be downloaded and may take a few minutes."
echo ""

docker compose pull

echo ""
echo "Starting Simbioin service..."
docker compose up

echo ""
echo "--------------------------------------"
echo "Simbioin is now running."
echo "Open your browser at:"
echo "http://localhost:8000"
echo "To stop Simbioin, press Ctrl + C in this terminal."
echo
echo "--------------------------------------"
