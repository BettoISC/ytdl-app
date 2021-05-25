#!/bin/bash
app="bettoisc/ytdl-app:latest"
docker stop ytdl-app
docker run  -d --rm --name ytdl-app -v $(pwd):/app ${app} -p $PORT