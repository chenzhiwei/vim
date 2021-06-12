# The Vim Configuration

## Install NeoVIM

```
brew install neovim

add-apt-repository ppa:neovim-ppa/stable
apt update && apt -y install neovim
```

## Requirement

```
apt install -y gcc python3-pip python3-wheel python3-setuptools --no-install-recommends
pip3 install --upgrade pynvim
```

## Setup

```
git clone --recurse-submodules https://github.com/chenzhiwei/vim ~/.vim
~/.vim/setup.sh

source ~/.vim/.bashrc
```

* On Debian systems:

    ```
    sudo update-alternatives --install /usr/bin/vim vim /usr/bin/nvim 50
    sudo update-alternatives --install /usr/bin/vimdiff vimdiff /usr/bin/nvim 50
    ```

## Commands

* Ctr + o Jump to previous visited locations
* Ctr + i Jump forward to the next locations
* Ctr + g Show the file info that currently edit

## Extended commands

* `CTRL + ]` switch to defination/declaration.
* `CTRL + T` to switch back.
* `:tn` switch to next defination/declaration.
* `:tp` switch to previous defination/declaration.
* `g]` switch between multiple tags.

## Extra vim commands

```
:PlugInstall
:GoInstallBinaries
```

## Settings

* `:windo set wrap` Wrap lines in vimdiff window

## Debug VIM

Following will generate a `myVim.log` with debug level 9.

```
vim -V9myVim.log filename
```

## .vimrc only

If you only want to use `.vimrc`, run one of the following commands:

```
wget -O ~/.vimrc https://github.com/chenzhiwei/vim/raw/master/.vimrc.real

curl -L -o ~/.vimrc https://github.com/chenzhiwei/vim/raw/master/.vimrc.real
```

## More

在 bash 里用 vim 打开一些文件时这些文件名不能被自动补全，比如`.a`和`.o`文件。

```
$ ls
test.a test.o test.so test.txt
$ vim t[tab][tab]
```

原因是`/usr/share/bash-completion/bash_completion`里的这一行：

```
_install_xspec '*.@(o|so|so.!(conf|*/*)|a|[rs]pm|gif|jp?(e)g|mp3|mp?(e)g|avi|asf|ogg|class)' vi vim gvim rvim view rview rgvim rgview gview emacs xemacs sxemacs kate kwrite
```
