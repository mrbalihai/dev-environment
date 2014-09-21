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
set ssop-=options                                   " Don't include local and global values when saving sessions

" Turn relative line numbers on/off depending on focus mode
set number
autocmd FocusLost * :set relativenumber!
autocmd FocusGained * :set relativenumber
autocmd InsertEnter * :set relativenumber!
autocmd InsertLeave * :set relativenumber
autocmd BufEnter * :set relativenumber
autocmd BufLeave * :set relativenumber!

" Set the colour scheme
exe 'colo '.colourscheme

" Helper function to save the session to my vim dir
function! s:SaveSession(sessionName)
    execute "mksession! ~/.vim/session/" . a:sessionName . ".vim"
endfunction

function! s:RestoreSession(sessionName)
    execute "source ~/.vim/session/" . a:sessionName . ".vim"
endfunction

function! s:DeleteSession(sessionName)
    delete(expand("~/.vim/session/" . a:sessionName . ".vim"))
endfunction

command! -nargs=1 SaveSession call s:SaveSession(<f-args>)
command! -nargs=1 RestoreSession call s:RestoreSession(<f-args>)
command! -nargs=1 DeleteSession call s:DeleteSession(<f-args>)
