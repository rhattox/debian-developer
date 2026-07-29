#!/usr/bin/env bash

echo "######################"
echo "######################"
echo "#### APT PACKAGES ####"
echo "######################"
echo "######################"
apt update -y

# System administration, session management, backup, automation, and firewall tools
apt install -y tmux man ansible iptables

# Networking tools for downloading files, DNS lookups, port testing, and network troubleshooting
apt install -y curl wget net-tools iputils-ping dnsutils telnet traceroute nmap

# General development tools, compilers, build systems, file compression, and clipboard access
apt install -y sudo git vim build-essential make cmake gcc tree xclip zip unzip openssl

# Data processing (JSON/YAML), fuzzy finding, and APT security/transport dependencies
apt install -y jq yq fzf ca-certificates apt-transport-https gnupg lsb-release
