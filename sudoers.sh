#!/usr/bin/env bash

echo "###########################"
echo "###########################"
echo "#### CONFIGURE SUDOERS ####"
echo "###########################"
echo "###########################"

echo "Add user to sudo group"

usermod -aG sudo ${USER}

echo "Add user to sudoers"

cat <<EOF >${SUDOERS_FOLDER}/${USER}
${USER} ALL=(ALL) NOPASSWD:ALL
EOF
chown root:root ${SUDOERS_FOLDER}/${USER}
chmod 0700 ${SUDOERS_FOLDER}/${USER}
