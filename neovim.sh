#!/bin/bash
set -e

# Download Neovim binary
NVIM_URL="https://github.com/neovim/neovim/releases/download/v${NVIM_VERSION}/nvim-linux-x86_64.tar.gz"
TMP_DIR="/tmp/nvim-install"

mkdir -p "$TMP_DIR"

echo "Downloading Neovim..."
curl -L "$NVIM_URL" -o "$TMP_DIR/nvim.tar.gz"

echo "Extracting Neovim..."
tar -xzf "$TMP_DIR/nvim.tar.gz" -C "$TMP_DIR"

echo "Installing Neovim..."


echo "Bin.."
cp -a "${TMP_DIR}/nvim-linux-x86_64/bin/nvim" "/usr/local/bin/nvim"

echo "Lib.."
cp -a "${TMP_DIR}/nvim-linux-x86_64/lib/nvim" "/usr/local/lib/nvim"

echo "Share.."
cp -a "${TMP_DIR}/nvim-linux-x86_64/share/nvim" "/usr/local/share/nvim"
echo "Neovim installed to $INSTALL_DIR/nvim"

echo "Clean up ${TMP_DIR}"
rm -rf ${TMP_DIR}


echo "Update file permissions" 
chown -R ${USER}:${USER} "/usr/local/bin/nvim"
chmod -R 750 "/usr/local/bin/nvim"