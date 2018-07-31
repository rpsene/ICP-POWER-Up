#!/bin/bash

#Written by Mick Tarsel

gen_ssh_keys(){
  ssh-keygen -b 4096 -f ~/.ssh/id_rsa -N "";
  cat ~/.ssh/id_rsa.pub | sudo tee -a ~/.ssh/authorized_keys;
  #ssh-copy-id -i ~/.ssh/id_rsa.pub <user>@<node_ip_address>
  sudo systemctl restart sshd;
}

apt-get update

apt install docker.io

sudo docker pull ibmcom/icp-inception-ppc64le:2.1.0.2

mkdir /opt/ibm-cloud-private-ce-2.1.0.2

cd /opt/ibm-cloud-private-ce-2.1.0.2

docker run -e LICENSE=accept -v "$(pwd)":/data ibmcom/icp-inception-ppc64le:2.1.0.2 cp -r cluster /data
