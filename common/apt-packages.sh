#!/usr/bin/env bash

echo "######################"
echo "######################"
echo "#### APT PACKAGES ####"
echo "######################"
echo "######################"
apt update -y

# Administration & System Management
apt install -y \
  tmux \        # Terminal multiplexer for managing multiple sessions
  man \         # Interface to on-line reference manuals
  timeshift \   # System restore tool for creating filesystem snapshots
  ansible \     # Automation engine for configuration management and deployment
  iptables      # Administration tool for IPv4 packet filtering and NAT

# Networking & Connectivity Diagnostics
apt install -y \
  curl \         # Command-line tool for transferring data via URLs
  wget \         # Non-interactive network retriever for downloading files
  net-tools \    # Network configuration utilities (ifconfig, netstat, etc.)
  iputils-ping \ # Network diagnostic tool for checking host reachability
  dnsutils \     # DNS lookup utilities like dig and nslookup
  telnet \       # Client for the Telnet protocol to test port connectivity
  traceroute \   # Diagnostic tool to display packet routes across networks
  nmap \         # Network exploration tool and security/port scanner
  openssh-server # SSH server daemon for secure remote shell access

# Development Tools & Essentials
apt install -y \
  sudo \        	# Grants administrative privileges to non-root users
  git \         	# Distributed version control system for tracking code changes
  vim \         	# Highly configurable command-line text editor
  build-essential \ # Meta-package with compilers and tools needed for building software
  make \        	# Build automation tool for compiling applications
  cmake \       	# Cross-platform build system generator
  gcc \         	# GNU C compiler
  tree \        	# Displays directory structures in a tree-like format
  xclip \       	# Command-line interface to the X11 clipboard
  zip \         	# Compression and file packaging utility
  unzip \       	# Extraction utility for zip archives
  rsync \       	# Fast, versatile remote and local file synchronization tool
  openssl       	# Toolkit for Transport Layer Security (TLS) and cryptography

# Python & C Compilation Libraries (Header Files)
apt install -y \
  libbz2-dev \  # bzip2 compression library development files
  libev-dev \   # High-performance event loop library development files
  libffi-dev \  # Foreign Function Interface library development files
  libgdbm-dev \ # GNU database manager library development files
  liblzma-dev \ # XZ/LZMA compression library development files
  libncurses-dev \ # Terminal handling/text-UI library development files
  libreadline-dev \ # Command-line editing/history library development files
  libsqlite3-dev \ # SQLite embedded database development files
  libssl-dev \  # OpenSSL development files for SSL/TLS encryption support
  tk-dev \      # Tk GUI toolkit development files
  zlib1g-dev    # zlib compression library development files

# System Monitoring & Diagnostics
apt install -y \
  htop \        # Interactive process viewer and system monitor
  iftop \       # Real-time network bandwidth usage monitor by host
  iotop \       # Interactive I/O usage monitor for tracking disk activity
  sysstat \     # Performance monitoring tools (sar, iostat, mpstat)
  glances \     # Comprehensive curses-based cross-platform system monitor
  dstat         # Versatile tool for monitoring resource statistics (CPU, disk, net)

# Graphical Interface, Desktop & i3 Window Manager
apt install -y \
  dmenu \       # Dynamic menu launcher for X11
  feh \         # Lightweight image viewer often used to set desktop wallpaper
  lightdm \     # Cross-desktop display/login manager
  xserver-xorg-input-all \ # Meta-package for all X.Org input drivers mouse, keyboard, touch
  i3 \          # Dynamic tiling window manager
  i3status \    # Status bar generator for i3/i3bar
  i3lock \      # Minimalist screen locker for i3
  xrdp \        # Remote Desktop Protocol (RDP) server implementation
  gnome-terminal # Graphical terminal emulator for GNOME

# CLI Utilities, Data Parsing & Package Management
apt install -y \
  jq \          # Command-line JSON processor
  yq \          # Command-line YAML and XML processor
  fzf \         # Interactive command-line fuzzy finder
  ca-certificates \ # Common CA certificates to verify SSL/TLS connections
  apt-transport-https \ # APT transport layer for secure repository access over HTTPS
  gnupg \       # GNU Privacy Guard for cryptographic signing and encryption
  lsb-release   # Print Linux Standard Base (LSB) release distribution details

# Desktop Fonts
apt install -y \
  fonts-liberation \  # Metrically compatible font replacements for Arial, Times, and Courier
  fonts-liberation2   # Updated Liberation fonts for better screen readability