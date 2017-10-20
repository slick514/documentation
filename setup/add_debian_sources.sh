#!/bin/bash

echo '----Adding Sources----'
sources_entry='deb http://deb.debian.org/debian jessie main contrib non-free'
if grep -Fxq "$sources_entry" /etc/apt/sources.list
then
	echo 'no need to add content to /etc/apt/sources.list'
else
	echo 'adding lines to /etc/apt/sources.list'
	echo "$sources_entry" | sudo tee -a /etc/apt/sources.list
	echo 'deb-src http://deb.debian.org/debian jessie main contrib non-free' | sudo tee -a /etc/apt/sources.list
fi
