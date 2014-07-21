" Hide toolbars
set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar

" Make the window maximise
set lines=999 columns=999

" Set font
set guifont=Consolas_for_Powerline_FixedD:h14

" Enable the powerline symbols
set encoding=utf-8
let g:Powerline_symbols="fancy"
let g:airline_symbols = {}
let g:airline_left_sep = "\u2b80" "use double quotes here
let g:airline_left_alt_sep = "\u2b81"
let g:airline_right_sep = "\u2b82"
let g:airline_right_alt_sep = "\u2b83"
let g:airline_symbols.branch = "\u2b60"
let g:airline_symbols.readonly = "\u2b64"
let g:airline_symbols.linenr = "\u2b61"

" gui colour scheme
exe 'colo '.guicolourscheme

