#!/bin/bash

sudo apt-get install openjdk-17-jdk

cd ${HOME}
rm -rf .otl
git clone https://github.com/OTLanguage/.otl.git
chmod +x "${HOME}/.otl/otl"

file=`cat ~/.bashrc`
zsvalue=alias otl="sh ${HOME}/.otl/otl"

if [ "${file}" != *"${zsvalue}"* ] ; then
	echo 'alias otl="sh ${HOME}/.otl/otl"' >>  ~/.bashrc
fi
