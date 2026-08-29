#!/usr/bin/env bash

echo "######################"
echo "######################"
echo "#### APT PACKAGES ####"
echo "######################"
echo "######################"
apt update -y

# Desktop Fonts
apt install -y \
  fonts-liberation \  # Metrically compatible font replacements for Arial, Times, and Courier
  fonts-liberation2   # Updated Liberation fonts for better screen readability

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
  gnome-terminal \ # Graphical terminal emulator for GNOME
  xclip      	# Command-line interface to the X11 clipboard
