#!/bin/bash
echo '----Adding Raspbian Sources----'
sources_entry='deb http://archive.raspbian.org/raspbian jessie main contrib non-free'
if grep -Fxq "$sources_entry" /etc/apt/sources.list
then
	echo 'no need to add content to /etc/apt/sources.list'
else
	echo 'adding lines to /etc/apt/sources.list'
	echo "$sources_entry" | sudo tee -a /etc/apt/sources.list
	echo 'deb-src http://archive.raspbian.org/raspbian jessie main contrib non-free' | sudo tee -a /etc/apt/sources.list
	wget https://archive.raspbian.org/raspbian.public.key -O - | sudo apt-key add -
fi
