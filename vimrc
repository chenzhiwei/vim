if filereadable(expand("~/.vim/.vimrc.real"))
    source ~/.vim/.vimrc.real
endif

if filereadable(expand("~/.vim/.vimrc.ctags"))
    source ~/.vim/.vimrc.ctags
endif
