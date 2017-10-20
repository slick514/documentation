#!/bin/bash

. replace_bashrc.sh
. git_config.sh
. update_upgrade_apt-get.sh
. install_pi_gpio.sh
. install_java.sh
. add_raspbian_sources.sh
. add_gpg_key.sh
sudo rpi-update
. apt-get_imports.sh
. install_pip.sh
. do_pip_installs.sh
. install_scapy.sh
. create_virtual_environments.sh
. install_pygame.sh
. install_opencv.sh
