#!/bin/bash
DOTFILES=$HOME/dotfiles

# SPACEMACS
## install spacemacs
python -m pip install --user python-language-server[all] pyls-isort pyls-mypy pyls-black flake8 autoflake importmagic epc
git clone -b develop https://github.com/syl20bnr/spacemacs ~/.emacs.d
ln -s $DOTFILES/.spacemacs $HOME/.spacemacs

# install libtool, libvterm, and cmake for vterm to work

## configure git
ln -s $DOTFILES/.gitconfig $HOME/.gitconfig

