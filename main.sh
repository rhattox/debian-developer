#!/usr/bin/env bash

set -xeu

USER="dev"
HOME_USER="/home/${USER}" 
INSTALL_DIR="${HOME_USER}/.local/bin"

PROFILES_FOLDER="/etc/profile.d"
SUDOERS_FOLDER="/etc/sudoers.d"

NVIM_VERSION="0.11.3"
ASDF_VERSION="0.18.0"

mkdir -p "$INSTALL_DIR"

source ./apt-packages.sh
source ./neovim.sh
source ./asdf.sh
source ./dotfiles.sh
source ./profiles.sh
source ./sudoers.sh
# source ./chrome.sh

chown ${USER}:${USER} -R ${HOME_USER}/.config
chmod -R 750 -R ${HOME_USER}/.config
chown ${USER}:${USER} -R ${HOME_USER}/.local
chmod -R 750 -R ${HOME_USER}/.local
