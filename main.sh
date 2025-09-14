#!/usr/bin/env bash

#set -xeu

echo "########################"
echo "########################"
echo "### DEBIAN DEVELOPER ###"
echo "########################"
echo "########################"

EXECUTION_PATH=$(pwd)
USER="dev"
HOME_USER="/home/${USER}"
INSTALL_DIR="${HOME_USER}/.local/bin"
TMP_DIR="/tmp/debian-developer"
SYSTEM_FONT_LOCATION=/usr/local/share/fonts

FONT_VERSION="3.4.0"
NVIM_VERSION="0.11.3"
ASDF_VERSION="0.18.0"

ASDF_URL="https://github.com/asdf-vm/asdf/releases/download/v${ASDF_VERSION}/asdf-v${ASDF_VERSION}-linux-amd64.tar.gz"
FONT_URL="https://github.com/ryanoasis/nerd-fonts/releases/download/v${FONT_VERSION}/JetBrainsMono.zip"
NVIM_URL="https://github.com/neovim/neovim/releases/download/v${NVIM_VERSION}/nvim-linux-x86_64.tar.gz"

PROFILES_FOLDER="/etc/profile.d"
SUDOERS_FOLDER="/etc/sudoers.d"

mkdir -p "$INSTALL_DIR"
mkdir -p "${TMP_DIR}"

source ./apt-packages.sh
source ./neovim.sh
source ./asdf.sh
source ./dotfiles.sh
source ./profiles.sh
source ./sudoers.sh
source ./chrome.sh
source ./wsl.sh
source ./fonts.sh

chown ${USER}:${USER} -R ${HOME_USER}/.config
chmod -R 750 -R ${HOME_USER}/.config
chown ${USER}:${USER} -R ${HOME_USER}/.local
chmod -R 750 -R ${HOME_USER}/.local
