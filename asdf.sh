#!/usr/bin/env bash
set -e

# Download asdf binary
ASDF_URL="https://github.com/asdf-vm/asdf/releases/download/v${ASDF_VERSION}/asdf-v${ASDF_VERSION}-linux-amd64.tar.gz"
TMP_DIR="/tmp/asdf-install"

mkdir -p "$TMP_DIR"

echo "Downloading asdf..."
curl -L "$ASDF_URL" -o "$TMP_DIR/asdf.tar.gz"

echo "Extracting asdf..."
tar -xzf "$TMP_DIR/asdf.tar.gz" -C "$TMP_DIR"

echo "Installing asdf..."
cp "${TMP_DIR}/asdf" "$INSTALL_DIR/asdf"
chmod +x "$INSTALL_DIR/asdf"

echo "asdf installed to $INSTALL_DIR/asdf"

echo "Clean Up ${TMP_DIR}"
rm -rf ${TMP_DIR}

echo "Update file permissions" 
chown -R ${USER}:${USER} $INSTALL_DIR/asdf
chmod -R 750 $INSTALL_DIR/asdf