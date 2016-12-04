#! /bin/bash

#install eclipse-mars
if [ "$USER" != "root" ]; then
  echo "Please restart with sudo"
  exit
fi
echo "Please enter username:"
read username
cd /opt/dev/java
wget http://mirror.cc.columbia.edu/pub/software/eclipse/technology/epp/downloads/release/neon/1a/eclipse-jee-neon-1a-linux-gtk-x86_64.tar.gz
cd  /opt/dev/java
tar -zxvf /opt/dev/java/eclipse-*.tar.gz
chown -R $username:$username /opt/dev/java
rm /opt/dev/java/eclipse-*.tar.gz
