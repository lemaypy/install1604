wget -qO - https://d2t3ff60b2tol4.cloudfront.net/services@insynchq.com.gpg.key | sudo apt-key add -
sudo sh -c 'echo "deb http://apt.insynchq.com/ubuntu xenial non-free contrib" >> /etc/apt/sources.list.d/insync.list'
sudo apt update
sudo apt install -y insync
