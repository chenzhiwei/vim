"Get out of VI's compatible mode
set nocompatible

"I like using light background terminal
set background=light

"Sets how many lines of history VIM has to remember
set history=1000

"Enable filetype plugin
filetype on
filetype plugin on
filetype indent on

"Set to auto read when a file is changed from the outside
set autoread

"Enable syntax hl
syntax on
syntax enable

"Always show current position
set ruler

"Show line number and wrap line
set nu
set wrap

"Set backspace
set backspace=eol,start,indent

"Backspace and cursor keys wrap to
set whichwrap+=<,>,h,l

"Set magic on
set magic

"show matching bracets
set showmatch

"How many tenths of a second to blink
set mat=4

"Text options
set expandtab
set shiftwidth=4
set tabstop=4
set softtabstop=4
set smarttab
set lbr

"Auto/Smart/C-style indent
set ai
set si
set cindent

"Chinese support
set encoding=utf-8
set fencs=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set ambiwidth=single

"Highlight search things
set hlsearch
set incsearch

"Auto-complete filename as in bash
set wildmode=list:longest,full

"Set the comment line DarkBlue
"highlight Comment ctermfg=DarkBlue

"Highlight trailing spaces/tabs
match ErrorMsg '\s\+$'

"Highligh trailing spaces/tabs in c language files
let c_space_errors=1

"Highlight settings in Visual select and Diff mode
highlight Search ctermfg=DarkBlue
highlight Visual ctermfg=White ctermbg=LightBlue
highlight DiffAdd    cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=Red
highlight DiffDelete cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=Red
highlight DiffChange cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=Red
highlight DiffText   cterm=bold ctermfg=10 ctermbg=88 gui=none guifg=bg guibg=Red
"highlight Comment ctermfg=Blue

"Don't like q:
map q <Nop>

"When highlight words, don't jump to next
"nnoremap * *`` # This will cause screen flicker
nnoremap * :let @/='\<<C-R>=expand("<cword>")<CR>\>'<CR>:set hls<CR>

"Map :Q to :q, :W to :w
cnoreabbrev Q <C-r>=(getcmdtype()==':'? 'q!' : 'Q')<CR>
cnoreabbrev W <C-r>=(getcmdtype()==':'? 'w' : 'W')<CR>
cnoreabbrev Wq <C-r>=(getcmdtype()==':'? 'wq' : 'Wq')<CR>
cnoreabbrev WQ <C-r>=(getcmdtype()==':'? 'wq' : 'WQ')<CR>

"Map VIM command/insert mode shortcut to bash shortcut
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
cnoremap <C-b> <Left>
cnoremap <C-f> <Right>
cnoremap <C-d> <Del>
cnoremap <C-k> <Nop>
inoremap <C-a> <Home>
inoremap <C-e> <End>
inoremap <C-k> <Up>
inoremap <C-j> <Down>
inoremap <C-b> <Left>
inoremap <C-f> <Right>
inoremap <C-d> <Del>

"autocmd settings
if !exists("autocommands_loaded")
    let autocommands_loaded = 1

    "Strip trailing withspace
    fun! StripTrailingWhitespace()
        let l = line(".")
        let c = col(".")
        " if &ft =~ 'mkd'
        "     return
        " endif
        %s/\s\+$//e
        call cursor(l, c)
    endfun
    autocmd BufWritePre * call StripTrailingWhitespace()
    autocmd BufNewFile,BufRead *.{css,htm,html,js,json,rb,xml,yaml,yml} set sw=2 ts=2 sts=2
    " autocmd BufNewFile,BufRead *.json if !exists("filetype")|set ft=javascript|endif
    " autocmd BufWinLeave *.sh :![ -x % ] || chmod +x %
endif

"FileType
autocmd FileType go setlocal noexpandtab
autocmd FileType html,javascript,css,json,jsonc,yaml setlocal shiftwidth=2 tabstop=2 softtabstop=2
