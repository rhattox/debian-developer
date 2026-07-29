#!/usr/bin/env bash

echo "###########################"
echo "###########################"
echo "#### INSTALL .DOTFILES ####"
echo "###########################"
echo "###########################"

cp -a ${EXECUTION_PATH}/dotfiles/.gitconfig ${HOME_USER}/.gitconfig
chown ${USER}:${USER} ${HOME_USER}/.gitconfig
chmod 0750 ${HOME_USER}/.gitconfig

cp -a ${EXECUTION_PATH}/dotfiles/.tmux.conf ${HOME_USER}/.tmux.conf
chown ${USER}:${USER} ${HOME_USER}/.tmux.conf
chmod 0750 ${HOME_USER}/.tmux.conf

git clone ${DOTFILES_REPOSITORY} ${HOME_USER}/.config/nvim
