#!/usr/bin/env bash

echo "###########################"
echo "#### INSTALL DOTFILES ####"
echo "###########################"

# Copy the default git and tmux config files into the user's home directory.
cp -a ${EXECUTION_PATH}/dotfiles/.gitconfig ${HOME_USER}/.gitconfig
chown ${USER}:${USER} ${HOME_USER}/.gitconfig
chmod 0750 ${HOME_USER}/.gitconfig

cp -a ${EXECUTION_PATH}/dotfiles/.tmux.conf ${HOME_USER}/.tmux.conf
chown ${USER}:${USER} ${HOME_USER}/.tmux.conf
chmod 0750 ${HOME_USER}/.tmux.conf

# Clone the custom Neovim config repository into the local config directory.
git clone https://github.com/rhattox/dotfiles.git ${HOME_USER}/.config/nvim

echo "###########################"
