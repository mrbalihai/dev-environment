"-- GENERAL EDITOR CONFIG --

" Stuff to get conemu to play with vim colour schemes
if !has('gui_running')
    set term=xterm
    set t_Co=256
    let &t_AB="\e[48;5;%dm"
    let &t_AF="\e[38;5;%dm"
endif

" Tab spacing
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

" Syntax Higlighting
syntax on

" Line numbers
set number

" Enable the vim airline on start
set laststatus=2

" Enable vim airline on the tabs
let g:airline#extensions#tabline#enabled = 1

" Get ctrlp to use the git ls-files to navigate the files
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files']

" Colour scheme
exe 'colo '.colourscheme
