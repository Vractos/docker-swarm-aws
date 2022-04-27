#!/bin/bash
export LC_ALL=C
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get update -y
# install docker-engine
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update
sudo apt-get install -y docker-ce
echo "Docker installed..."
sudo usermod -aG docker ${whoami}
sudo systemctl enable docker
sudo systemctl start docker
echo "########################################"
echo "########################################"