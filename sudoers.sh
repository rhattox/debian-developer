#!/bin/bash

echo "Add user to sudo group" 

usermod -aG sudo ${USER}

echo "Add user to sudoers" 
cp -a ./sudoers/${USER} ${SUDOERS_FOLDER}/${USER}
chown root:root ${SUDOERS_FOLDER}/${USER}
chmod 0700 ${SUDOERS_FOLDER}/${USER}