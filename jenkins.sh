
#!/bin/bash

# Update system packages
sudo apt update -y

# Install Java
sudo apt install fontconfig openjdk-21-jre -y

# Check Java version
java -version

# Add Jenkins repository key
sudo wget -O /etc/apt/keyrings/jenkins-keyring.asc \
https://pkg.jenkins.io/debian-stable/jenkins.io-2026.key

# Add Jenkins repository
echo "deb [signed-by=/etc/apt/keyrings/jenkins-keyring.asc] https://pkg.jenkins.io/debian-stable binary/" | sudo tee \
/etc/apt/sources.list.d/jenkins.list > /dev/null

# Update package list
sudo apt update -y

# Install Jenkins
sudo apt install jenkins -y

# Start Jenkins service
sudo systemctl enable jenkins
sudo systemctl start jenkins

# Check Jenkins status
sudo systemctl status jenkins --no-pager

echo "Jenkins installation completed!"
echo "Access Jenkins at: http://YOUR_SERVER_IP:8080"
