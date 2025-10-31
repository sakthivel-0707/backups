#!/bin/bash

set -e

echo ">>> Checking system requirements..."

if ! command -v apt &>/dev/null; then
  echo "This script supports only Debian/Ubuntu-based systems."
  exit 1
fi

if [ "$EUID" -eq 0 ]; then
  echo "Please run as a normal user, not root."
  exit 1
fi

echo ">>> Updating system..."
sudo apt update -y
sudo apt install -y ca-certificates curl gnupg lsb-release apt-transport-https software-properties-common

echo ">>> Installing Docker..."
sudo apt install -y docker.io

echo ">>> Enabling and starting Docker service..."
sudo systemctl enable docker
sudo systemctl start docker

echo ">>> Adding current user ($USER) to the docker group..."
sudo groupadd -f docker
sudo usermod -aG docker "$USER"

echo ">>> Pulling NS2 Docker image..."
sudo docker pull npranav10/ns2

echo ">>> Setting up X11 GUI access..."
if command -v xhost &>/dev/null; then
  xhost +SI:localuser:root || true
else
  echo "xhost not found. GUI (NAM) might not work properly."
fi

echo ">>> Creating run script: run_ns2.sh"
cat << 'EOF' > run_ns2.sh
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
EOF

chmod +x run_ns2.sh

echo
echo ">>> Installation complete!"
echo ">>> Log out and log back in to activate Docker group permissions."
echo ">>> Then run NS2 anytime using:"
echo "    ./run_ns2.sh"
echo
echo "Your NS2 files will be saved in: ~/ns2_projects"
