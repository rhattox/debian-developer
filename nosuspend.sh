#!/usr/bin/env bash

mkdir -p /etc/systemd/sleep.conf.d/

cp -a ${EXECUTION_PATH}/dotfiles/nosuspend.conf /etc/systemd/sleep.conf.d/nosuspend.conf