#! /bin/bash

#install x2go en silence
read -p "started with sudo? If not press Ctrl-C"

apt install software-properties-common
add-apt-repository ppa:x2go/stable
read -p "edit sources.list to retro to wily then press enter..."
apt update
apt install x2goserver x2goserver-xsession
#x2go client
apt install x2goclient

#patch pour un serveur
read -p "run server with XFCE? Press Enter. Otherwise press Ctrl-C"

export GSETTINGS_SCHEMA_DIR=/usr/share/xfce:/usr/share/xfce:/usr/local/share/:/usr/share/:/var/lib/snapd/desktop
export XDG_DATA_DIRS=/usr/share/xfce:/usr/share/xfce:/usr/local/share/:/usr/share/:/var/lib/snapd/desktop
