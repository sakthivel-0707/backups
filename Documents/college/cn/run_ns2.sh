#!/bin/bash

# Check Docker service
if ! systemctl is-active --quiet docker; then
  echo "Starting Docker service..."
  sudo systemctl start docker
fi

# Allow X11 GUI display
if command -v xhost &>/dev/null; then
  xhost +SI:localuser:root >/dev/null 2>&1
fi

echo ">>> Launching NS2 Docker environment..."
docker run -it \
  --name ns2_container \
  --rm \
  -v "$HOME/ns2_projects":/home/ns2user/projects \
  -v /tmp/.X11-unix:/tmp/.X11-unix \
  -e DISPLAY=$DISPLAY \
  npranav10/ns2 bash
