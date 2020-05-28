#!/bin/bash
<<COMMAND

sudo apt-get remove docker docker-engine
sudo apt install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get install docker-ce
sudo docker -v
# Docker version 18.06.0-ce, build 0ffa825)]

sudo mkdir -p /etc/systemd/system/docker.service.d
sudo vi /etc/systemd/system/docker.service.d/http_proxy.conf
Environment="HTTP_PROXY=http://<your_proxy_ip>:<your_proxy_port>/"
sudo vi /etc/systemd/system/docker.service.d/https_proxy.conf
Environment="HTTPS_PROXY=http://<your_proxy_ip>:<your_proxy_port>/"
sudo systemctl daemon-reload
sudo systemctl restart docker

COMMAND
