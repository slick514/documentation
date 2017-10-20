#!/bin/bash

echo '----Adding Terminal Desktop Icon----'
desktop_path='~/Desktop/terminal.desktop'
touch $desktop_path
chmod u+x $desktop_path
echo '#!/usr/bin/env xdg-open' | tee $desktop_path
echo '[Desktop Entry]' | tee -a $desktop_path
echo 'Version=1.0' | tee -a $desktop_path
echo 'Type=Application' | tee -a $desktop_path
echo 'Terminal=false' | tee -a $desktop_path
echo 'Name[en_US]=Terminal' | tee -a $desktop_path
echo 'Exec=gnome-terminal' | tee -a $desktop_path
echo 'Icon=/usr/share/icons/gnome/48x48/apps/terminal.png' | tee -a $desktop_path
