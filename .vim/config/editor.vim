"-- GENERAL EDITOR CONFIG --

" Stuff to get conemu to play with vim colour schemes
set term=xterm
set t_Co=256
let &t_AB="\e[48;5;%dm"
let &t_AF="\e[38;5;%dm"

" Tab spacing
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

" Syntax Higlighting
syntax on

" Line numbers
set number

" Colour scheme
exe 'colo '.colourscheme
