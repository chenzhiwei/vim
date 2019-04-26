# The Vim Configuration

## Setup

```
cd ~
git clone --recurse-submodules https://github.com/chenzhiwei/vim .vim
ln -sf .vim/vimrc .vimrc
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

## Settings

* `:windo set wrap` Wrap lines in vimdiff window


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
