#!/bin/bash
# https://tecadmin.net/install-java-8-on-debian/
here=$(pwd)
echo '----Installing Java----'
# Set up java...
sudo apt-get install -y oracle-java8-jdk
cd /usr/lib/jvm
jdk_path=$(pwd)/$(ls | grep jdk-8)
if grep -Fxq "JAVA_HOME=$jdk_path" /etc/profile
then
	echo 'java path already found in /etc/profile'
else
	echo "JAVA_HOME=$jdk_path" | sudo tee -a /etc/profile
	echo 'JRE_HOME=$JAVA_HOME/jre' | sudo tee -a /etc/profile
	echo 'PATH=$PATH:$JAVA_HOME/bin:$JRE_HOME/bin' | sudo tee -a /etc/profile
	export JAVA_HOME
	export JRE_HOME
	export PATH
	echo 'java path added to /etc/profile'
fi
cd $here
