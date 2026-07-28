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
