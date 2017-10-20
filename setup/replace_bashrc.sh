#!/bin/bash
if [ -f ~/.bashrc ]
then
	mv ~/.bashrc ~/.bashrc_old
fi
cp bashrc ~/.bashrc
cp bash_aliases ~/.bash_aliases
source ~/.bashrc
