#! /bin/bash

if [ "$USER" != "root" ]; then
  echo "Please restart with sudo"
  exit
fi
echo "Please enter username:"
read username
mkdir /opt/dev/java/maven
cd /opt/dev/java/maven
wget http://mirror.its.dal.ca/apache/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.tar.gz
tar xzvf apache-maven-3.3.9-bin.tar.gz
rm apache-maven-3.3.9-bin.tar.gz
chown -R $username:$username /opt/dev/java/maven
echo "export PATH=/opt/dev/java/maven/apache-maven-3.3.9/bin:$PATH" >> /home/$username/.profile
#source /home/$USERNAME/.profile
echo "restart session to complete!"




