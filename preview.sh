#!/bin/bash
# Preview Correia site locally — always opens the root URL, not /smartprobonoip
cd "$(dirname "$0")"

PORT=3000
URL="http://127.0.0.1:${PORT}/"

if lsof -i :"$PORT" >/dev/null 2>&1; then
  echo "Port $PORT already in use. Opening site..."
else
  echo "Starting preview server on $URL"
  python3 -m http.server "$PORT" &
  sleep 1
fi

echo "Open this URL: $URL"
open "$URL" 2>/dev/null || echo "(Open the URL above in your browser)"
