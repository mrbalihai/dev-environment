"-- GENERAL EDITOR CONFIG --

" Stuff to get conemu to play with vim colour schemes
if !has('gui_running')
    set term=xterm
    set t_Co=256
    let &t_AB="\e[48;5;%dm"
    let &t_AF="\e[38;5;%dm"
endif

" General Tweaks
set smartindent                                     " Enable syntax aware indentation
set tabstop=4                                       " How many spaces to use for tab spacing
set shiftwidth=4                                    " How many spaces to use for indenting
set expandtab                                       " Use spaces instead of tabs
set ignorecase                                      " Make the search and such like case-insensitive
set listchars=tab:>-,trail:~,extends:>,precedes:<   " Characters to use to highlight spaces
set list                                            " Show spaces as a visual character
set number                                          " Show line numbers
set noeb vb t_vb=                                   " Disable the OS beep

" Set the colour scheme
exe 'colo '.colourscheme

" Vim Airline
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'

" Get ctrlp to use the git ls-files to navigate the files
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files']

" NERDTree
let NERDTreeMinimalUI   = 1
let NERDTreeStatusLine  = 1

" Limelight
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_ctermfg = 240
let g:limelight_conceal_guifg = 'DarkGray'
let g:limelight_conceal_guifg = '#777777'
let g:limelight_default_coefficient = 0.3
