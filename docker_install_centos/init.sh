#!/bin/bash -xu

# いらないの入ってたら消す
sudo yum -y remove docker docker-common docker-selinux docker-engine

# 依存系
sudo yum -y install yum-utils device-mapper-persistent-data lvm2
sudo yum makecache fast
sudo yum -y  install docker-ce
sudo usermod -aG docker ${USER}

# 成功してるかな−
docker version
