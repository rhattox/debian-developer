#!/usr/bin/env bash

folders=("Desktop" "Documents" "Downloads" "Music" "Pictures" "Public" "Templates" "thinclient_drives" "Videos")

for folder in "${folders[@]}"; do
    if [ -d "${HOME_USER}/${folder}" ]; then
        echo "${HOME_USER}/${folder}"
        rm -d "${HOME_USER}/${folder}"
    fi
done
