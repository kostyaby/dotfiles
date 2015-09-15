" .vimrc
" v0.2
" Last Update: 9.8.2015
"
" Author: Kanstantsin Sokal
" kostya.sokol.by@gmail.com
set nocompatible

filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'bling/vim-airline'
set laststatus=2

Plugin 'Valloric/YouCompleteMe'
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py'

call vundle#end()
filetype plugin indent on

set backspace=indent,eol,start

" ================ backups ================
if !isdirectory($HOME . '/.vim/.backup')
  call mkdir($HOME . '/.vim/.backup', 'p')
endif
set backupdir=~/.vim/.backup//

if !isdirectory($HOME . '/.vim/.swp')
  call mkdir($HOME . '/.vim/.swp', 'p')
endif
set directory=~/.vim/.swp//

syntax on

set history=40
set ruler
set showcmd
set hlsearch

set mouse=a

set autoindent
set expandtab
set shiftwidth=4
set softtabstop=4

set list listchars=tab:\ \ ,trail:·

