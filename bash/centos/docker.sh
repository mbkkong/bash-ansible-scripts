#!/bin/bash

echo "Installing Docker"

yum -y update
yum -y install yum-utils device-mapper-persistent-data lvm2
yum -y install docker-ce
systemctl start docker
systemctl enable docker
systemctl status docker

echo "Usermod for Docker"

usermod -aG docker $USER