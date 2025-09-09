#!/usr/bin/env bash

set -xeu

echo "Configure profiles"

echo "ASDF Profile"
cp -a ./profiles/asdf.sh ${PROFILES_FOLDER}/asdf.sh
chown ${USER}:${USER} ${PROFILES_FOLDER}/asdf.sh
chmod 0750 ${PROFILES_FOLDER}/asdf.sh

echo "Default Editor Profile"
cp -a ./profiles/default-editor.sh ${PROFILES_FOLDER}/default-editor.sh
chown ${USER}:${USER} ${PROFILES_FOLDER}/default-editor.sh
chmod 0750 ${PROFILES_FOLDER}/default-editor.sh

echo "Add Local Bin Folder"
cp -a ./profiles/local-bin.sh ${PROFILES_FOLDER}/local-bin.sh
chown ${USER}:${USER} ${PROFILES_FOLDER}/local-bin.sh
chmod 0750 ${PROFILES_FOLDER}/local-bin.sh