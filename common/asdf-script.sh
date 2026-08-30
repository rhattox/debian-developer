#!/usr/bin/env bash

echo "##############################"
echo "INSTALL ASDF PLUGINS"

# Install the language and tooling plugins managed by asdf.
echo "Installing asdf plugins..."
asdf plugin add asdf-plugin-manager https://github.com/asdf-community/asdf-plugin-manager
asdf plugin add maven https://github.com/halcyon/asdf-maven.git
asdf plugin add java https://github.com/halcyon/asdf-java.git
asdf plugin add golang https://github.com/asdf-community/asdf-golang.git
asdf plugin add python https://github.com/danhper/asdf-python.git
asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
asdf plugin add lua https://github.com/Stratus3D/asdf-lua.git
asdf plugin add ripgrep https://gitlab.com/wt0f/asdf-ripgrep.git
asdf plugin add fd https://gitlab.com/wt0f/asdf-fd.git

echo "asdf plugins installed"
echo "##############################"
