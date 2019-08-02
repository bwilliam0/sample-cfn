#!/bin/bash -x
export DEBIAN_FRONTEND=noninteractive
apt-get -q update
apt-get -yq upgrade
cd /home/ubuntu
wget https://aws-codedeploy-us-west-2.s3.amazonaws.com/latest/install
chmod +x ./install
./install auto
service codedeploy-agent start
service apache2 restart