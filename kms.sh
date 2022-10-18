#!/bin/bash
apt-get update && apt-get upgrade -y
apt-get install git wget curl gcc build-essential debhelper -y
mkdir ~/vlmcsd-build
cd ~/vlmcld-build
git clone https://github.com/Wind4/vlmcsd 
cd ~/vlmcsd-build/vlmcsd
git submodele update --init debian
dpkg-buildpackage -rfakeroot -D -us -uc
cd ~/vlmcsd-build
dpkg -i ./vlmcsd_1113_and64.deb
systemctl status vlmcsd