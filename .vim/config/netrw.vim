"-- NETRW - FILE EXPLORER CONFIG --

" Hide the info banner
let g:netrw_banner = 0

" Show the files in tree view
let g:netrw_liststyle = 3

" Sort the files - directories on top files underneath
let g:netrw_sort_sequence = '[\/]$,*'

" Use the previous window to open files in (like an IDE)
let g:netrw_browse_split = 4

" Automatically open Vexp on start
augroup ProjectDrawer
  autocmd!
  autocmd VimEnter * :Vexplore
augroup END
