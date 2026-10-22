sudo apt update
sudo apt install -y docker.io

# Check Docker installation
docker --version

# Check Docker service status
sudo systemctl status docker

# Test Docker
sudo docker run hello-world
