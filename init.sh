#!/bin/bash
DOTFILES=$HOME/dotfiles

# SPACEMACS
## install spacemacs
pip3 install python-language-server[all] pyls-isort pyls-mypy pyls-black flake8 autoflake importmagic epc
git clone -b develop https://github.com/syl20bnr/spacemacs ~/.emacs.d
ln -s $DOTFILES/.spacemacs $HOME/.spacemacs

## configure git
ln -s $DOTFILES/.gitconfig $HOME/.gitconfig

