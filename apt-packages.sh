#!/usr/bin/env bash

echo "Update APT packages" 
apt update -y

echo "Install Terminal Tools"
apt install -y tmux man

echo "Install Network Tools"
apt install -y curl wget net-tools iputils-ping dnsutils telnet traceroute nmap openssh-server

echo "Install System Core Utilities"
apt install -y sudo git vim build-essential make cmake gcc tree xclip zip unzip rsync openssl

echo "Install Development Libraries"
apt install -y libbz2-dev libev-dev libffi-dev libgdbm-dev liblzma-dev libncurses-dev libreadline-dev libsqlite3-dev libssl-dev tk-dev zlib1g-dev

echo "Install System Monitoring Tools"
apt install -y htop iftop iotop sysstat glances dstat

# echo "Install Window Manager"
# apt install -y dmenu feh i3 i3status i3lock xrdp

echo "Install Other Useful Tools"
apt install -y update-motd jq yq fzf ca-certificates software-properties-common apt-transport-https gnupg lsb-release

echo "Clean up APT cache"
apt clean
rm -rf /var/lib/apt/lists/* /var/cache/apt/archives /var/cache/apt/archives/partial