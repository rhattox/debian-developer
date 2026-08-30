#!/usr/bin/env bash

# Include user-local binaries so installed tools are available without sudo.
echo "Configuring local bin PATH..."
export PATH="${HOME}/.local/bin:$PATH"
