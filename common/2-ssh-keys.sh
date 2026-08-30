#!/usr/bin/env bash

echo "###########################"
echo "#### CONFIGURE SSH KEYS ####"
echo "###########################"

# Ensure the SSH directory exists and is only accessible by the current user.
ssh_home_path="${HOME_USER}/.ssh"
mkdir -p "${ssh_home_path}"
chmod 700 "${ssh_home_path}"

# Store the authorized public keys used for SSH authentication.
path_authorized_keys="${ssh_home_path}/authorized_keys"
cat << EOF > ${path_authorized_keys}
ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAINpJVVeUy0N03mHRts+eWeLOUw1E+m2lhPdY9qaXVaCz
ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAILG0Kfu6ZB/auUVz9/7/xyYjU870PKXXyylY8ZeLeNeV
EOF

# Lock down the key file and set the correct ownership.
chmod 600 ${path_authorized_keys}
chown ${USER}:${USER} ${ssh_home_path}