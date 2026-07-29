#!/usr/bin/env bash

SLEEP_CONF_FOLDER="/etc/systemd/sleep.conf.d"
SLEEP_CONFIG_FILE="nosuspend.conf"

copy_file() {
	cp -a ${EXECUTION_PATH}/dotfiles/${SLEEP_CONFIG_FILE} ${SLEEP_CONF_FOLDER}/${SLEEP_CONFIG_FILE}
}

if [ -d ${SLEEP_CONF_FOLDER} ]; then
	echo "Folder ${SLEEP_CONF_FOLDER} does exist"
	if [ -f ${SLEEP_CONF_FOLDER}/${SLEEP_CONFIG_FILE} ]; then
		copy_file
	fi
else
	echo "Folder ${SLEEP_CONF_FOLDER} does not exist"
	mkdir -p ${SLEEP_CONF_FOLDER}
	copy_file
fi
