#!/usr/bin/env bash

echo "##############################"
echo "##############################"
echo "#### CONFIGURING PROFILES ####"
echo "##############################"
echo "##############################"

cp -a ${EXECUTION_PATH}/profiles/*.sh ${PROFILES_FOLDER}/
chown -R ${USER}:${USER} ${PROFILES_FOLDER}
chmod -R 0750 ${PROFILES_FOLDER}
