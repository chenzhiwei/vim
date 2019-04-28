#!/bin/bash

## Setup for VIM init
cd ~
ln -sf .vim/vimrc .vimrc

## Setup for nvim autoload
mkdir -p ~/.local/share/nvim/site/autoload
cd ~/.local/share/nvim/site/autoload
ln -sf ../../../../../.vim/bundle/vim-plug/plug.vim .

## Setup for NeoVIM init
mkdir -p ~/.config/nvim
cd ~/.config/nvim
ln -sf ../../.vim/vimrc init.vim

## Setup nvim to vim
NVIM=$(which nvim)
if [[ "$NVIM" == "" ]]; then
    echo No nvim found
    exit 1
fi

cd ~/.vim/bin
ln -sf $NVIM vi
ln -sf $NVIM vim
ln -sf $NVIM editor

if [[ -f $HOME/.bashrc ]] && ! grep -wq .vim/.bashrc $HOME/.bashrc; then
    echo '. $HOME/.vim/.bashrc' >> $HOME/.bashrc
fi

if [[ -f $HOME/.bash_profile ]] && ! grep -wq .vim/.bashrc $HOME/.bash_profile; then
    echo '. $HOME/.vim/.bashrc' >> $HOME/.bash_profile
fi

rm -f /usr/bin/vimdiff.nvim
