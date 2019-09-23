#!/bin/bash -xu

# いらないの入ってたら消す
sudo yum -y remove docker docker-common docker-selinux docker-engine

# 依存系
sudo yum -y install yum-utils device-mapper-persistent-data lvm2
sudo yum makecache fast
sudo yum -y  install docker-ce
sudo usermod -aG docker ${USER}

sudo curl -L https://github.com/docker/compose/releases/download/1.21.0/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
sudo chown 755 /usr/local/bin/docker-compose


sudo systemctl start docker
sudo systemctl enable docker

# 成功してるかな−
docker version
