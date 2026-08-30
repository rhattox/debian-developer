#!/usr/bin/env bash

echo "######################"
echo "COMMON APT PACKAGES"

apt update -y

# Administration & System Management
apt install -y tmux man timeshift ansible iptables

# Networking & Connectivity Diagnostics
apt install -y curl wget net-tools iputils-ping dnsutils telnet traceroute nmap openssh-server

# Development Tools & Essentials
apt install -y sudo git vim build-essential make cmake gcc tree zip unzip rsync openssl

# Python & C Compilation Libraries (Header Files)
apt install -y libbz2-dev libev-dev libffi-dev libgdbm-dev liblzma-dev libncurses-dev libreadline-dev libsqlite3-dev libssl-dev tk-dev zlib1g-dev

# System Monitoring & Diagnostics
apt install -y htop iftop iotop sysstat glances dstat

# CLI Utilities, Data Parsing & Package Management
apt install -y jq yq fzf ca-certificates apt-transport-https gnupg lsb-release

echo "######################"

# HELPER
###
# Administration & System Management
###
# tmux - Terminal multiplexer for managing multiple sessions
# man - Interface to on-line reference manuals
# timeshift - System restore tool for creating filesystem snapshots
# ansible - Automation engine for configuration management and deployment
# iptables - Administration tool for IPv4 packet filtering and NAT

###
# Networking & Connectivity Diagnostics
###
# curl - Command-line tool for transferring data via URLs
# wget - Non-interactive network retriever for downloading files
# net-tools - Network configuration utilities (ifconfig, netstat, etc.)
# iputils-ping - Network diagnostic tool for checking host reachability
# dnsutils - DNS lookup utilities like dig and nslookup
# telnet - Client for the Telnet protocol to test port connectivity
# traceroute - Diagnostic tool to display packet routes across networks
# nmap - Network exploration tool and security/port scanner
# openssh-server - SSH server daemon for secure remote shell access

###
# Development Tools & Essentials
###
# sudo - Grants administrative privileges to non-root users
# git - Distributed version control system for tracking code changes
# vim - Highly configurable command-line text editor
# build-essential - Meta-package with compilers and tools needed for building software
# make - Build automation tool for compiling applications
# cmake - Cross-platform build system generator
# gcc - GNU C compiler
# tree - Displays directory structures in a tree-like format
# zip - Compression and file packaging utility
# unzip - Extraction utility for zip archives
# rsync - Fast, versatile remote and local file synchronization tool
# openssl - Toolkit for Transport Layer Security (TLS) and cryptography

###
# Python & C Compilation Libraries (Header Files)
###
# libbz2-dev - bzip2 compression library development files
# libev-dev - High-performance event loop library development files
# libffi-dev - Foreign Function Interface library development files
# libgdbm-dev - GNU database manager library development files
# liblzma-dev - XZ/LZMA compression library development files
# libncurses-dev - Terminal handling/text-UI library development files
# libreadline-dev - Command-line editing/history library development files
# libsqlite3-dev - SQLite embedded database development files
# libssl-dev - OpenSSL development files for SSL/TLS encryption support
# tk-dev - Tk GUI toolkit development files
# zlib1g-dev - zlib compression library development files

###
# System Monitoring & Diagnostics
###
# htop - Interactive process viewer and system monitor
# iftop - Real-time network bandwidth usage monitor by host
# iotop - Interactive I/O usage monitor for tracking disk activity
# sysstat - Performance monitoring tools (sar, iostat, mpstat)
# glances - Comprehensive curses-based cross-platform system monitor
# dstat - Versatile tool for monitoring resource statistics (CPU, disk, net)

###
# CLI Utilities, Data Parsing & Package Management
###
# jq - Command-line JSON processor
# yq - Command-line YAML and XML processor
# fzf - Interactive command-line fuzzy finder
# ca-certificates - Common CA certificates to verify SSL/TLS connections
# apt-transport-https - APT transport layer for secure repository access over HTTPS
# gnupg - GNU Privacy Guard for cryptographic signing and encryption
# lsb-release - Print Linux Standard Base (LSB) release distribution details
