#!/usr/bin/env bash

#set -xeu

INSTALL_MODE="${1}"

if [[ -z ${INSTALL_MODE} ]]; then
	echo "[ERROR] - Missing Argv[0] INSTALL MODE:"
	echo "	- server"
	echo "	- desktop"
	echo "	- wsl"
	exit 1
else
	case "${INSTALL_MODE}" in
	"server" | "desktop" | "wsl")
		echo "Valid choice: ${INSTALL_MODE}"
		;;
	*)
		echo "Error: '${INSTALL_MODE}' is not a valid option!" >&2
		echo "Available Options:"
		echo "	- server"
		echo "	- desktop"
		echo "	- wsl"
		exit 1
		;;
	esac
fi

USER_ID=$(id -u)
USER="dev"

# TODO
# CREATE CONDITION TO VALIDADE .ENV
source .env

EXECUTION_PATH="$(realpath "${0}")"
EXECUTION_PATH="$(dirname "${EXECUTION_PATH}")"

if [[ ${EUID} -ne 0 ]]; then
	echo "ROOT User is Required"
	exit 1
fi

if [[ -n "${SUDO_USER}" ]]; then
	echo "SUDO USER: ${SUDO_USER}"
	USER="${SUDO_USER}"
else
	echo "SUDO_USER is not defined, then, it going to assume as USER='${USER}'"
fi

# installs common first and then it goes through the user choice

source ${EXECUTION_PATH}/common/main.sh

case "${INSTALL_MODE}" in
"server")
	echo "Valid choice: server"
	source ${EXECUTION_PATH}/server/main.sh
	;;
"desktop")
	echo "Valid choice: desktop"
	source ${EXECUTION_PATH}/desktop/main.sh
	;;
"wsl")
	echo "starting wsl"
	source ${EXECUTION_PATH}/wsl/main.sh
	;;
*)
	echo "Error: ??"
	exit 1
	;;
esac
