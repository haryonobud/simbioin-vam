#!/bin/bash
set -e

echo "======================================"
echo "  Simbioin - Docker Startup"
echo "======================================"
echo

# --- SAFETY CLEANUP (signal lama) ---
if [ -f data/STOP_APP ]; then
  rm -f data/STOP_APP
fi

echo "Checking container image..."
echo "If this is your first time running Simbioin,"
echo "the image will be downloaded and may take a few minutes."
echo

docker compose pull

echo
echo "Starting Simbioin service..."
docker compose up -d

echo
echo "--------------------------------------"
echo "Simbioin is now running."
echo "Open your browser at:"
echo "http://localhost:8000"
echo
echo "To stop Simbioin, click \"Shut down\""
echo "in the web interface."
echo "--------------------------------------"
echo

# ===== WATCH LOOP =====
while true; do
  if [ -f data/STOP_APP ]; then
    echo
    echo "Stop signal detected..."
    ./stop.sh
    rm -f data/STOP_APP
    exit 0
  fi

  sleep 5
done
