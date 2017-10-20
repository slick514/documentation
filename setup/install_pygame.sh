#!/bin/bash
here=$(pwd)
echo '----Intalling pygame dependencies----'
sudo apt-get build-dep -y python-pygame
echo '----Installing pygame----'
cd /tmp
sudo hg clone https://bitbucket.org/pygame/pygame
cd pygame
sudo python3 setup.py build
sudo python3 setup.py install
cd /tmp
sudo rm -rf pygame
cd $here
