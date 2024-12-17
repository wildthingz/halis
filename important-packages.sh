#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

# install pacaur
sudo chmod +x "$DIR/pacaur-install.sh"
source "$DIR/pacaur-install.sh"

# #text editing
# pacaur -S visual-studio-code-bin vim vim-jedi --noconfirm --needed

#pacaur -S atom
#apm install editorconfig es6-javascript atom-ternjs javascript-snippets linter linter-eslint language-babel autocomplete-modules file-icons

git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh

# coding
pacaur -S cmake gsl htop bashtop fzf alacritty cusrsor-bin docker docker-compose --noconfirm --needed

mkdir ~/.config/alacritty

# Create alacritty.toml with cat
cat > ~/.config/alacritty/alacritty.toml << 'EOL'
# $HOME/.config/alacritty/alacritty.toml
[window]

opacity = 0.9

padding.x = 10
padding.y = 10

decorations = "None"
decorations_theme_variant = "Dark"

[font]

#normal.family = "Cascadia Code PL"
#bold.family = "Cascadia Code PL"
#italic.family = "Cascadia Code PL"
#bold_italic.family = "Cascadia Code PL"

size = 15.0
EOL

## slack
#pacaur -S slack-desktop --noconfirm --needed

## spotify
#pacaur -S spotify --noconfirm --needed

# python
pacaur -S python-numpy python-scipy python-matplotlib python-virtualenv python38 --noconfirm --needed

# LaTeX
pacaur -S texlive-most --noconfirm --needed

# fenics
# pacaur -S hdf5-openmpi hypre scotch mumps petsc dolfin --noconfirm --needed

# Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
