#!/usr/bin/env bash

echo "##############################"
echo "#### SET PERMISSIONS ####"
echo "##############################"

# Fix ownership for the user's home directory and nested config directories.
chown ${USER}:${USER} -R ${HOME_USER}
chown ${USER}:${USER} -R ${HOME_USER}/.config
chmod -R 750 -R ${HOME_USER}/.config
chown ${USER}:${USER} -R ${HOME_USER}/.local
chmod -R 750 -R ${HOME_USER}/.local

echo "##############################"
