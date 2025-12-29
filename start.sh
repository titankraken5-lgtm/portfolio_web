#!/bin/bash
# Start Express server and expose via localtunnel

# Install dependencies
npm install

# Start the server in background
node index.js &
SERVER_PID=$!

# Wait for server to start
sleep 3

# Start localtunnel to expose the server
npx localtunnel --port 3000

# Kill server when localtunnel exits
kill $SERVER_PID
