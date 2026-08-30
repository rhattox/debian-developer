#!/usr/bin/env bash

echo "######################"
echo "######################"
echo "#### INSTALL NVIM ####"
echo "######################"
echo "######################"

# Prepare a temporary directory for the Neovim tarball and extracted files.
TMP_DIR="${TMP_DIR}/nvim"
mkdir -p "${TMP_DIR}"

# Download the official Neovim binary archive from the configured URL.
echo "Downloading Neovim..."
curl -L "$NVIM_URL" -o "${TMP_DIR}/nvim.tar.gz"

# Extract the archive into the temp directory.
echo "Extracting Neovim..."
tar -xzf "${TMP_DIR}/nvim.tar.gz" -C "${TMP_DIR}"

echo "Installing Neovim..."

# Copy the executable, libraries, and shared runtime files into the system locations.
echo "Bin.."
cp -a "${TMP_DIR}/nvim-linux-x86_64/bin/nvim" "/usr/local/bin/nvim"

echo "Lib.."
cp -a "${TMP_DIR}/nvim-linux-x86_64/lib/nvim" "/usr/local/lib/nvim"

echo "Share.."
cp -a "${TMP_DIR}/nvim-linux-x86_64/share/nvim" "/usr/local/share/nvim"
echo "Neovim installed to ${INSTALL_DIR}/nvim"

# Fix ownership and permissions for the installed Neovim binary.
echo "Update file permissions"
chown -R ${USER}:${USER} "/usr/local/bin/nvim"
chmod -R 750 "/usr/local/bin/nvim"

# Clean up the temporary download files.
rm -rf ${TMP_DIR}
