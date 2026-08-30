#!/usr/bin/env bash

# Add asdf shims so installed language tools are available on PATH.
echo "Configuring asdf PATH..."
export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"
