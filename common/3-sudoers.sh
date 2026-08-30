#!/usr/bin/env bash

echo "###########################"
echo "#### CONFIGURE SUDOERS ####"
echo "###########################"

# Add the active user to the sudo group so they can perform admin actions.
echo "Add user to sudo group"
usermod -aG sudo ${USER}

# Create a dedicated sudoers entry for this user with passwordless sudo access.
echo "Add user to sudoers"
cat <<EOF >${SUDOERS_FOLDER}/${USER}
${USER} ALL=(ALL) NOPASSWD:ALL
EOF
chown root:root ${SUDOERS_FOLDER}/${USER}
chmod 0700 ${SUDOERS_FOLDER}/${USER}

echo "###########################"
