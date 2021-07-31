#!/bin/bash

## Setup NVIM
function setup_nvim() {
    curl -L https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
        \ | sudo tar -xz --strip-components=1 -C /usr/

    sudo update-alternatives --install /usr/bin/vi vi /usr/bin/nvim 50
    sudo update-alternatives --install /usr/bin/vim vim /usr/bin/nvim 50
    sudo update-alternatives --install /usr/bin/view view /usr/bin/nvim 50
    sudo update-alternatives --install /usr/bin/vimdiff vimdiff /usr/bin/nvim 50
    sudo update-alternatives --install /usr/bin/editor editor /usr/bin/nvim 50

    sudo apt install python3-pip --no-install-recommends -y

    python3 -m pip install --user --upgrade pynvim
}

## Setup NVIM Config
function setup_config() {
    git clone --recurse-submodules https://github.com/chenzhiwei/init.vim ~/.config/nvim

    mkdir -p ~/.local/share/nvim/site/autoload
    cd $_ && ln -sf ../../../../../.vim/vim-plug/plug.vim .

    go install golang.org/x/tools/gopls@latest

    vim +PlugInstall +qall
}

setup_nvim
setup_config
