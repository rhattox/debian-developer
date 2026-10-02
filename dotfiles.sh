#!/usr/bin/env bash

echo "###########################"
echo "###########################"
echo "#### INSTALL .DOTFILES ####"
echo "###########################"
echo "###########################"

cp -a ${EXECUTION_PATH}/dotfiles/.profile ${HOME_USER}/.profile
chown ${USER}:${USER} ${HOME_USER}/.profile
chmod 0750 ${HOME_USER}/.profile


cp -a ${EXECUTION_PATH}/dotfiles/.bash_rc ${HOME_USER}/.bash_rc
chown ${USER}:${USER} ${HOME_USER}/.bash_rc
chmod 0750 ${HOME_USER}/.bash_rc

cp -a ${EXECUTION_PATH}/dotfiles/.gitconfig ${HOME_USER}/.gitconfig
chown ${USER}:${USER} ${HOME_USER}/.gitconfig
chmod 0750 ${HOME_USER}/.gitconfig

cp -a ${EXECUTION_PATH}/dotfiles/.tmux.conf ${HOME_USER}/.tmux.conf
chown ${USER}:${USER} ${HOME_USER}/.tmux.conf
chmod 0750 ${HOME_USER}/.tmux.conf

mkdir -p ${HOME_USER}/.config/i3

cp -a ${EXECUTION_PATH}/dotfiles/i3conf ${HOME_USER}/.config/i3/config
chown ${USER}:${USER} ${HOME_USER}/.config/i3/config
chmod 0750 ${HOME_USER}/.config/i3/config

mkdir -p ${HOME_USER}/.config/i3status

cp -a ${EXECUTION_PATH}/dotfiles/i3statusconf ${HOME_USER}/.config/i3status/config
chown -R ${USER}:${USER} ${HOME_USER}/.config/i3status/config
chmod -R 0750 ${HOME_USER}/.config/i3status/config

git clone https://github.com/rhattox/dotfiles.git ${HOME_USER}/.config/nvim
