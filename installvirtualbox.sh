echo "Please enter username: "
read username
sudo echo "deb http://download.virtualbox.org/virtualbox/debian xenial contrib" > /etc/apt/sources.list.d/virtualbox.list
sudo wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
sudo apt update
sudo apt install -y --allow-unauthenticated virtualbox-5.0
sudo wget http://download.virtualbox.org/virtualbox/5.0.20/Oracle_VM_VirtualBox_Extension_Pack-5.0.20-106931.vbox-extpack
sudo VBoxManage extpack install Oracle_VM_VirtualBox_Extension_Pack-5.0.20-106931.vbox-extpack
sudo usermod -aG vboxusers $username
sudo rm Oracle_VM_VirtualBox_Extension_Pack-5.0.20-106931.vbox-extpack

