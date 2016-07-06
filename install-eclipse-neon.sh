#! /bin/bash

#install eclipse-mars
read -p "started with sudo? If not press Ctrl-C"
echo "Please enter username: (dev?)"
read username
cd /opt/dev/java
wget http://mirror.netcologne.de/eclipse/technology/epp/downloads/release/neon/R/eclipse-jee-neon-R-linux-gtk-x86_64.tar.gz
cd  /opt/dev/java
tar -zxvf /opt/dev/java/eclipse-*.tar.gz
chown -R $username:$username /opt/dev/java
rm /opt/dev/java/eclipse-*.tar.gz
