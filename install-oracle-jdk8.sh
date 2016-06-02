#! /bin/bash

#install oracle jdk8 en silence
read -p "started with sudo? If not press Ctrl-C"

apt install -y python-software-properties debconf-utils
add-apt-repository -y ppa:webupd8team/java
apt update
echo "oracle-java8-installer shared/accepted-oracle-license-v1-1 select true" | debconf-set-selections
apt install -y oracle-java8-installer
