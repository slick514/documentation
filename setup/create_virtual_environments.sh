#!/bin/bash

echo '----Installing virtualenvs'
sudo pip install virtualenv virtualenvwrapper
sudo pip3 install virtualenv virtualenvwrapper
sudo rm -rf ~/.cache/pip
virtual_env_line='export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3.4'
if grep -Fxq "$virtual_env_line" ~/.bashrc
then
	echo 'no need to alter .bashrc'
else
	echo 'adding virtual environment environment vars to .bashrc'
	echo "$virtual_env_line" | sudo tee -a ~/.bashrc
	echo 'export WORKON_HOME=$HOME/.virtualenvs' | sudo tee -a ~/.bashrc
	echo 'source /usr/local/bin/virtualenvwrapper.sh' | sudo tee -a ~/.bashrc
fi

echo '----making virtual-environment "cv"'
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3.4
export WORKON_HOME=$HOME/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh
mkvirtualenv -p /usr/bin/python3.4 ~/.virtualenvs/cv
