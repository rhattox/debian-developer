#!/usr/bin/env bash
set -e

asdf plugin add python https://github.com/danhper/asdf-python.git
asdf install python 3.13.7
asdf set -u python 3.13.7

asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
asdf install nodejs 24.6.0
asdf set -u nodejs 24.6.0

asdf plugin add lua https://github.com/Stratus3D/asdf-lua.git
asdf install lua 5.1
asdf set -u lua 5.1

asdf plugin add ripgrep https://gitlab.com/wt0f/asdf-ripgrep.git
asdf install ripgrep 14.1.1
asdf set -u ripgrep 14.1.1

asdf plugin add fd https://gitlab.com/wt0f/asdf-fd.git
asdf install fd 10.3.0
asdf set -u fd 10.3.0

asdf plugin add golang https://github.com/asdf-community/asdf-golang.git
asdf install golang 1.25.1
asdf set -u golang 1.25.1

