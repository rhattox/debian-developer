#!/bin/bash

echo "Update APT packages" 
apt update -y

echo "Install APT Packages"
apt install -y \
    sudo \
    git \
    vim \
    wget \
    curl \
    build-essential \
    make \
    cmake \
    gcc \
    fzf \
    yq \
    tree \
    xclip \
    zip \
    unzip \
    rsync \
    openssl \
    libbz2-dev \
    libev-dev \
    libffi-dev \
    libgdbm-dev \
    liblzma-dev \
    libncurses-dev \
    libreadline-dev \
    libsqlite3-dev \
    libssl-dev \
    tk-dev \
    zlib1g-dev \
    nmap \
    net-tools \
    openssh-server \
    traceroute \
    glances \
    iotop \
    dstat \
    sysstat \
    clamav \
    gnupg \
    duplicity \
    timeshift \
    ansible \
    dmenu \
    feh \
    tmux \
    telnet
    # i3 \
    # i3status \
    # i3lock \
