#!/bin/bash

cd ~
ln -sf .vim/vimrc .vimrc

vim +PlugInstall +qall
