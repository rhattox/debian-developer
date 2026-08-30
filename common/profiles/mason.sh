#!/usr/bin/env bash

# Add Mason-managed Neovim tooling to PATH for language servers and formatters.
echo "Configuring Mason PATH..."
export PATH="$HOME/.local/share/nvim/mason/bin:$PATH"
