" Set the colour scheme
colo monokai

" General Tweaks
set smartindent                                     " Enable syntax aware indentation
set tabstop=4                                       " How many spaces to use for tab spacing
set shiftwidth=4                                    " How many spaces to use for indenting
set expandtab                                       " Use spaces instead of tabs
set listchars=tab:>-,trail:~,extends:>,precedes:<   " Characters to use to highlight spaces
set list                                            " Show spaces as a visual character
set number                                          " Show line numbers
set noeb vb t_vb=                                   " Disable the OS beep
set ssop-=options                                   " Don't include local and global values when saving sessions
set mouse-=a                                        " Disable the mouse

autocmd InsertEnter,InsertLeave * set cul!
