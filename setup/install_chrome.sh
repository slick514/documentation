#!/bin/bash

here=$(pwd)
echo '----Installing Chrome----'
wget -q -O - "https://dl-ssl.google.com/linux/linux_signing_key.pub" | sudo apt-key add -
sudo touch /etc/apt/sources.list.d/google-chrome.list
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" | sudo tee /etc/apt/sources.list.d/google-chrome.list'
sudo apt-get install -f
cd /tmp
wget sudo https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo sudo dpkg -i google-chrome-stable_current_amd64.deb

echo '----Adding Chrome Desktop Icon----'
desktop_path='~/Desktop/chrome.desktop'
touch $desktop_path
chmod u+x $desktop_path
echo '#!/usr/bin/env xdg-open' | tee $desktop_path
echo '[Desktop Entry]' | tee -a $desktop_path
echo 'Version=1.0' | tee -a $desktop_path
echo 'Type=Application' | tee -a $desktop_path
echo 'Terminal=false' | tee -a $desktop_path
echo 'Name[en_US]=Chrome' | tee -a $desktop_path
echo 'Exec=google-chrome' | tee -a $desktop_path
echo 'Icon=/opt/google/chrome/product_logo_48.png' | tee -a $desktop_path
cd $here
