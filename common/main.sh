#!/usr/bin/env bash

#set -xeu

local_execution_path="${EXECUTION_PATH}/common"

source ${local_execution_path}/1-apt-packages.sh
source ${EXECUTION_PATH}/neovim.sh
source ${EXECUTION_PATH}/asdf.sh
source ${EXECUTION_PATH}/dotfiles.sh
source ${EXECUTION_PATH}/profiles.sh
source ${EXECUTION_PATH}/sudoers.sh
