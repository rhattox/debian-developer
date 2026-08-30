#!/usr/bin/env bash

echo "######################"
echo "#### INSTALL ASDF ####"
echo "######################"

# Download and extract the asdf binary into a temporary workspace.
TMP_DIR="${TMP_DIR}/asdf-install"
mkdir -p "${TMP_DIR}"

echo "Downloading asdf..."
curl -L "$ASDF_URL" -o "${TMP_DIR}/asdf.tar.gz"

echo "Extracting asdf..."
tar -xzf "${TMP_DIR}/asdf.tar.gz" -C "${TMP_DIR}"

# Install the asdf binary into the configured tool installation directory.
echo "Installing asdf..."
cp "${TMP_DIR}/asdf" "${INSTALL_DIR}/asdf"
chmod +x "${INSTALL_DIR}/asdf"

echo "asdf installed to ${INSTALL_DIR}/asdf"

# Clean up the temporary archive and adjust permissions on the installed binary.
echo "Clean Up ${TMP_DIR}"
rm -rf ${TMP_DIR}

echo "Update file permissions"
chown -R ${USER}:${USER} ${INSTALL_DIR}/asdf
chmod -R 750 ${INSTALL_DIR}/asdf

echo "######################"
