#!/bin/bash

echo "Copying dotfiles to ${USER} home folder" 

cp -a ./dotfiles/.gitconfig ${HOME_USER}/.gitconfig
chown ${USER}:root ${HOME_USER}/.gitconfig
chmod 0750 ${HOME_USER}/.gitconfig

cp -a ./dotfiles/.tmux.conf ${HOME_USER}/.tmux.conf
chown ${USER}:root ${HOME_USER}/.tmux.conf
chmod 0750 ${HOME_USER}/.tmux.conf

mkdir -p ${HOME_USER}/.config/i3

cp -a ./dotfiles/i3conf ${HOME_USER}/.config/i3/config
chown ${USER}:root ${HOME_USER}/.config/i3/config
chmod 0750 ${HOME_USER}/.config/i3/config

mkdir -p ${HOME_USER}/.config/i3status

cp -a ./dotfiles/i3statusconf ${HOME_USER}/.config/i3status/config
chown -R ${USER}:root ${HOME_USER}/.config/i3status/config
chmod -R 0750 ${HOME_USER}/.config/i3status/config
