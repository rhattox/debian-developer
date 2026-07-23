#!/usr/bin/env bash

asdf plugin add asdf-plugin-manager https://github.com/asdf-community/asdf-plugin-manager
asdf install asdf-plugin-manager 1.5.0
asdf set -u asdf-plugin-manager 1.5.0

asdf plugin add maven https://github.com/halcyon/asdf-maven.git
asdf install maven 3.9.9
asdf set -u maven 3.9.9

asdf plugin add java https://github.com/halcyon/asdf-java.git
asdf install java corretto-24.0.2.12.1
asdf set -u java corretto-24.0.2.12.1

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
