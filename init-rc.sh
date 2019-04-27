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
