#!/usr/bin/env bash

#set -xeu

echo "##############################"
echo "#### START COMMON SETUP ####"
echo "##############################"

# Run the shared setup steps from the common directory for this machine.
local_execution_path="${EXECUTION_PATH}/common"
source ${local_execution_path}/1-apt-packages.sh

echo "##############################"
echo "#### COMMON SETUP COMPLETE ####"
echo "##############################"
