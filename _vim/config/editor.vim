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
set listchars=tab:>-,trail:~,extends:>,precedes:<   " Characters to use to highlight spaces
set list                                            " Show spaces as a visual character
set number                                          " Show line numbers
set noeb vb t_vb=                                   " Disable the OS beep

" Set the colour scheme
exe 'colo '.colourscheme
