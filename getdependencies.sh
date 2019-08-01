#!/bin/bash

bash /tmp/provisioning/getdocker.sh
sudo groupadd docker
sudo usermod -aG docker ubuntu
sudo usermod -aG docker sysadmin
sudo apt update -y && sudo apt upgrade -y && sudo apt full-upgrade -y && sudo apt clean -y && sudo apt autoremove -y

