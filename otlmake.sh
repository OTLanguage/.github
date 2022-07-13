#!/bin/bash

cd ${HOME}
rm -rf .otl
git clone https://github.com/OTLanguage/.otl.git
chmod +x "${HOME}/.otl/otl"

file=`cat ~/.zshrc`
zsvalue=alias otl="sh ${HOME}/.otl/otl"

if [[ "${file}" != *"${zsvalue}"* ]] ; then
	echo 'alias otl="sh ${HOME}/.otl/otl"' >>  ~/.zshrc
fi
