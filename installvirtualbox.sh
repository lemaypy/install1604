echo "Please enter username: "
read username
sudo echo "deb http://download.virtualbox.org/virtualbox/debian wily contrib" >> /etc/apt/sources.list
sudo wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -
sudo apt-get update
sudo apt-get install -y virtualbox-5.0
sudo wget http://download.virtualbox.org/virtualbox/5.0.14/Oracle_VM_VirtualBox_Extension_Pack-5.0.14-105127.vbox-extpack
sudo VBoxManage extpack install Oracle_VM_VirtualBox_Extension_Pack-5.0.14-105127.vbox-extpack
sudo usermod -aG vboxusers $username
sudo rm Oracle_VM_VirtualBox_Extension_Pack-5.0.14-105127.vbox-extpack
