#!/bin/bash

# Install Jenkins
sudo apt update
sudo apt install -y openjdk-11-jdk
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb https://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt update
sudo apt install -y jenkins
sudo systemctl start jenkins
sudo systemctl enable jenkins
sudo ufw allow 8080
sudo ufw allow OpenSSH
sudo ufw enable
echo "Jenkins installation completed. Access it at http://your_server_ip:8080"
echo "To get the initial admin password, run: sudo cat /var/lib/jenkins/secrets/initialAdminPassword"
