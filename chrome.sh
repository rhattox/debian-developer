#!/usr/bin/env bash

echo "########################"
echo "########################"
echo "#### INSTALL CHROME ####"
echo "########################"
echo "########################"

TMP_DIR="${TMP_DIR}/chrome"
DEB_FILE="${TMP_DIR}/google-chrome-stable_current_amd64.deb"

mkdir -p "${TMP_DIR}"
echo "Downloading Google Chrome .deb package..."
wget -O "${DEB_FILE}" https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

echo "Installing Google Chrome..."
sudo apt install -y "${DEB_FILE}"

echo "Cleaning up..."
rm -rf "${TMP_DIR}"
echo "Google Chrome installation complete."
