#!/usr/bin/env bash

echo "##############################"
echo "#### CONFIGURE PROFILES ####"
echo "##############################"

# Copy the shell profile helpers into the target profile directory.
cp -a ${EXECUTION_PATH}/profiles/*.sh ${PROFILES_FOLDER}

# Ensure the profile files are owned by the active user and are executable.
chown -R ${USER}:${USER} ${PROFILES_FOLDER}
chmod -R 0750 ${PROFILES_FOLDER}

echo "##############################"
