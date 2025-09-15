#!/usr/bin/env bash

echo "######################"
echo "######################"
echo "#### INSTALL ASDF ####" 
echo "######################"
echo "######################"

TMP_DIR="${TMP_DIR}/asdf-install"

mkdir -p "${TMP_DIR}"

echo "Downloading asdf..."
curl -L "$ASDF_URL" -o "${TMP_DIR}/asdf.tar.gz"

echo "Extracting asdf..."
tar -xzf "${TMP_DIR}/asdf.tar.gz" -C "${TMP_DIR}"

echo "Installing asdf..."
cp "${TMP_DIR}/asdf" "${INSTALL_DIR}/asdf"
chmod +x "${INSTALL_DIR}/asdf"

echo "asdf installed to ${INSTALL_DIR}/asdf"

echo "Clean Up ${TMP_DIR}"
rm -rf ${TMP_DIR}

echo "Update file permissions" 
chown -R ${USER}:${USER} ${INSTALL_DIR}/asdf
chmod -R 750 ${INSTALL_DIR}/asdf


cp -a ${EXECUTION_PATH}/dotfiles/.plugin-versions /home/${USER}/.plugin-versions