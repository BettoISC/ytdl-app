#!/bin/bash
app="bettoisc/ytdl-app:latest"
docker build -t ${app} .
docker stop ytdl-app
docker run  -d --rm --name ytdl-app  -p 8059:80 -v $(pwd):/app ${app}