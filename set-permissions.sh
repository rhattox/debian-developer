#!/usr/bin/env bash

chown ${USER}:${USER} -R ${HOME_USER}/.config
chmod -R 750 -R ${HOME_USER}/.config
chown ${USER}:${USER} -R ${HOME_USER}/.local
chmod -R 750 -R ${HOME_USER}/.local

