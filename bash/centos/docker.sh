#!/bin/bash

echo "== ██████╗  ██████╗  ██████╗██╗  ██╗███████╗██████╗  =="
echo "== ██╔══██╗██╔═══██╗██╔════╝██║ ██╔╝██╔════╝██╔══██╗ =="
echo "== ██║  ██║██║   ██║██║     █████╔╝ █████╗  ██████╔╝ =="
echo "== ██║  ██║██║   ██║██║     ██╔═██╗ ██╔══╝  ██╔══██╗ =="
echo "== ██████╔╝╚██████╔╝╚██████╗██║  ██╗███████╗██║  ██║ =="
echo "== ╚═════╝  ╚═════╝  ╚═════╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝ =="
                                                                                                                                 
yum -y update
yum -y install yum-utils device-mapper-persistent-data lvm2
yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
yum -y install docker-ce
systemctl start docker && systemctl enable docker
firewall-cmd --permanent --zone=trusted --change-interface=docker0
firewall-cmd --permanent --zone=trusted --add-port=4243/tcp
firewall-cmd --reload
export DOCKER_CLIENT_TIMEOUT=120