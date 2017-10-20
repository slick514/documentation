#!/bin/bash

here=$(pwd)
cd /tmp
sudo wget --trust-server-names -O scapy scapy.net
sudo unzip scapy
cd scapy-master
sudo python3 setup.py install
sudo rm -rf scapy*



wget http://download.aircrack-ng.org/aircrack-ng-1.2-rc3.tar.gz -O aircrack
tar -zxvf aircrack
cd aircrack-ng-1.2-rc3
sudo make
sudo make install
sudo airodump-ng-oui-update

cd /tmp
git clone http://github.com/seveas/python-networkmanager
cd python-networkmanager
sudo python setup.py install
sudo python3 setup.py install

cd $here
