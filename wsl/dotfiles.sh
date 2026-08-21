#!/usr/bin/env bash

echo "###########################"
echo "###########################"
echo "#### INSTALL .DOTFILES ####"
echo "###########################"
echo "###########################"

COMMON_DOTFILES="${EXECUTION_PATH}/../common/dotfiles"

cp -a ${COMMON_DOTFILES}/.gitconfig ${HOME_USER}/.gitconfig
chown ${USER}:${USER} ${HOME_USER}/.gitconfig
chmod 0750 ${HOME_USER}/.gitconfig

cp -a ${COMMON_DOTFILES}/.tmux.conf ${HOME_USER}/.tmux.conf
chown ${USER}:${USER} ${HOME_USER}/.tmux.conf
chmod 0750 ${HOME_USER}/.tmux.conf

GIT_PATH=$(command -v git)

if [ -x "${GIT_PATH}" ]; then
	git clone ${DOTFILES_REPOSITORY} ${HOME_USER}/.config/nvim
else
	echo "Error: Binary '${GIT_PATH}' not found or lacks execution permissions."
	exit 1
fi
