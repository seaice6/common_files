colorscheme molokai
filetype  on
filetype plugin indent on
set guifont=Monaco\ Regular\ 12
"set guifont=Monospace\ Regular\ 12
"set guifont=文泉驿等宽正黑\ italic\ 12
set nocompatible
set number
set history=2000
set autoread
set nobackup
set noswapfile
set cursorline
set cursorcolumn
set mouse=a
set ruler
set showmode 
set showmatch
set hls
set smartcase
set autoindent
set cindent
set scrolloff=3
set smartindent
set tabstop=4
set shiftwidth=4
set et
set smarttab
set lbr
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set helplang=cn
set termencoding=utf-8
set ffs=unix,dos,mac
set formatoptions+=m
set completeopt=longest,menu
set wildmenu
set background=dark
set t_Co=256
set backspace=indent,eol,start
set showcmd		" display incomplete commands
set incsearch		" do incremental searching
set hlsearch
set report=0
set laststatus=2
set cmdheight=2
set magic

map <F4> :call TitleDet() <cr>'s
function AddTitle()
    call append(0,"\#!/bin/sh")
    call append(1,"# *********************************")
    call append(2,"# Author        : seaice6")
    call append(3,"# Last modified : ".strftime("%Y-%m-%d %H:%M"))
    call append(4,"# Email         : lhb16@outlook.com")
    call append(5,"# Filename      : ".expand("%:t"))
    call append(6,"# Description   : ")
    call append(7,"# *********************************")
    call append(8,'')
    echohl WarningMsg | echo "Successful in adding the cotpright." | echohl None
endfunction

function UpdateTitle()
    normal m'
    execute '/# Last modified/s@:.*$@\=strftime("%Y-%m-%d %H:%M")@'
    normal''
    normal mk
    execute '/# Filename/s@:.*$@\=":\t".expand("%:t")@'
    execute "noh"
    normal 'k
    echohl WarningMsg | echo "Successful in updating the cotpright." | echohl None
endfunction

function TitleDet()
    let n = 1
    while n < 10
        let line = getline(n)
        "if line = ~ '^\#\s*\S*Last\smodified\S*.*$'
        "    call UpdateTitle()
        "    return
        "endif
        let n = n + 1
    endwhile
    call AddTitle()
endfunction

