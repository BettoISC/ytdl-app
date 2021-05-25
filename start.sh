#!/bin/bash
app="bettoisc/ytdl-app:latest"
echo "Listening port=> $PORT"
docker stop ytdl-app
docker run  -d --rm --name ytdl-app -v $(pwd):/app ${app} -p ${PORT} -e LISTEN_PORT=${PORT}
