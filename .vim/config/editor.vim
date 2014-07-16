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

" Make the search and such like case-insensitive
set ignorecase

" Show unwanted space
set listchars=tab:>-,trail:~,extends:>,precedes:<
set list

" Syntax Higlighting
syntax on

" Line numbers
set number

" Vim Airline
set laststatus=2
let g:airline#extensions#tabline#enabled = 1

" Get ctrlp to use the git ls-files to navigate the files
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files']

" Colour scheme
exe 'colo '.colourscheme

" NERDTree
let NERDTreeMinimalUI   = 1
let NERDTreeDirArrows   = 1
let NERDTreeStatusLine  = 1

" Limelight
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_ctermfg = 240
let g:limelight_conceal_guifg = 'DarkGray'
let g:limelight_conceal_guifg = '#777777'
let g:limelight_default_coefficient = 0.3
