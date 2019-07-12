#!/bin/sh
sudo apt install -y qutebrowser gstreamer1.0-plugins-{bad,base,good,ugly}

# Initial dev stack 
sudo apt-get install -y build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libreadline-dev wget

# Python
sudo apt-get install -y python3-pip libssl-dev libffi-dev python-dev python3-venv

# Java
sudo apt install -y openjdk-11-jdk
# SDKMan
curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"
sdk version

# Java stack
sdk install maven

# Docker
sudo apt install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
sudo apt update
apt-cache policy docker-ce
sudo apt install -y docker-ce
sudo systemctl status docker
sudo usermod -aG docker ${USER}
sudo systemctl restart docker

# Gcloud
echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
sudo apt-get install -y apt-transport-https ca-certificates
sudo curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key --keyring /usr/share/keyrings/cloud.google.gpg add -
sudo apt-get update && sudo apt-get install -y google-cloud-sdk google-cloud-sdk-app-engine-java google-cloud-sdk-app-engine-python google-cloud-sdk-app-engine-python-extras google-cloud-sdk-pubsub-emulator 

# AWS-CLI
#pip3 install awscli --upgrade --user
sudo apt install -y awscli 

# Others
# sudo update-alternatives --config java
# sudo update-alternatives --config javac

