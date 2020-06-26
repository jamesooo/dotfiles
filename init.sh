#!/bin/bash
DOTFILES=$HOME/dotfiles

# SPACEMACS
## install spacemacs
git clone -b develop https://github.com/syl20bnr/spacemacs ~/.emacs.d
ln -s $DOTFILES/.spacemacs $HOME/.spacemacs

## configure git
ln -s $DOTFILES/.gitconfig $HOME/.gitconfig

