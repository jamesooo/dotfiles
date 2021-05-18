#!/bin/bash
DOTFILES=$HOME/dotfiles

# SPACEMACS
## install spacemacs
/usr/bin/env python3 -m pip install --user \
       python-language-server[all] \
       pyls-isort \
       pyls-mypy \
       pyls-black \
       flake8 \
       autoflake \
       importmagic \
       epc

git clone -b develop https://github.com/syl20bnr/spacemacs ~/.emacs.d
ln -s $DOTFILES/.spacemacs $HOME/.spacemacs

# install libtool, libvterm, and cmake for vterm to work
# i jump from os to os a lot (though i generally prefer arch)
# so some ifs to install vterm requirements everywhere
# just make sure you have sudo ;)
if [ -f /etc/arch-release ]; then
    sudo pacman -Syu \
         libtool \
         libvterm \
         cmake
elif [ -f /etc/redhat-release ]; then
    sudo yum install -y epel-release ; sudo yum update
    sudo yum install -y \
         libtool \
         libvterm \
         cmake
elif [ -f /etc/lsb-release ]; then
    sudo apt install -y \
         libtool \
         libvterm-bin \
         libvterm-dev \
         cmake
elif [ -f /usr/local/bin/brew ]; then
    brew install \
         libtool \
         libvterm \
         cmake
fi

## configure git
ln -s $DOTFILES/.gitconfig $HOME/.gitconfig

