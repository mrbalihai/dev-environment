" --PLUGIN CONFIGURATION--
set nocompatible
filetype off

" Setup the runtime for vundle package manager
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugins
Plugin 'gmarik/Vundle.vim'
Plugin 'plasticboy/vim-markdown'
Plugin 'flazz/vim-colorschemes'
Plugin 'cakebaker/scss-syntax.vim'

" Call after plugins to get vundle to do it's thing
call vundle#end()
filetype plugin indent on

" --IDE CONFIGURATION--
" Stuff to get conemu to play with vim colour schemes
set term=xterm
set t_Co=256
let &t_AB="\e[48;5;%dm"
let &t_AF="\e[38;5;%dm"

" colo summerfruit256
" colo zenburn
" colo beauty256
" colo charged-256
" colo monokai
colo tomorrow-night

" Tab spacing
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

syntax on
set number

" --KEY AND FILE MAPPING--
" Map additional filetypes to a syntax
au BufNewFile,BufRead *.json set filetype=javascript

" Remap keystrokes
inoremap jj <Esc>

" disable arrow keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_sort_sequence = '[\/]$,*'
let g:netrw_browse_split = 4
