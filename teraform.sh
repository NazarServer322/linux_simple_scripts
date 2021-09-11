#! bin/bash
sudo apt update 
sudo apt install curl -y
sudo  curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
sudo apt-add-repository "deb [arch=$(dpkg --print-architecture)] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
sudo  apt update
sudo apt install terraform
sudo terraform -v

####################AWS CLI#############################
sudo apt update
sudo curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64-2.0.30.zip" -o "awscliv2.zip"curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64-2.0.30.zip" -o "awscliv2.zip"
sudo apt install unzip -y 
sudo unzip awscliv2.zip
sudo ./aws/install
aws --version
