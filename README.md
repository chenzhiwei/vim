# The Vim Configuration

## Setup

```
git clone --recurse-submodules https://github.com/chenzhiwei/vim ~/.vim

cd ~ && ln -sf .vim/vimrc .vimrc

go install golang.org/x/tools/gopls@latest
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
