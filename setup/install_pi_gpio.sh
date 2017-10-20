#!/bin/bash

here=$(pwd)
echo '----Installing GPIO----'
# Install GPIO for the Pi
mkdir ~/projects
git clone git://git.drogon.net/wiringPi ~/projects/wiringPi
cd ~/projects/wiringPi
git pull origin
. ~/projects/wiringPi/build
cd $here
