#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

# install pacaur
sudo chmod +x "$DIR/pacaur-install.sh"
source "$DIR/pacaur-install.sh"

# text editing
pacaur -S visual-studio-code-bin vim vim-jedi --noconfirm --needed

##pacaur -S atom
##apm install editorconfig es6-javascript atom-ternjs javascript-snippets linter linter-eslint language-babel autocomplete-modules file-icons

git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh

# coding
pacaur -S cmake gsl htop gitkraken pandoc rust --noconfirm --needed

# slack
pacaur -S slack-desktop --noconfirm --needed

# spotify
pacaur -S spotify --noconfirm --needed

# python
pacaur -S python-numpy python-scipy python-matplotlib python-h5py python-virtualenv --noconfirm --needed

# LaTeX
pacaur -S texlive-most --noconfirm --needed

# Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
