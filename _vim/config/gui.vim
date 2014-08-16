" Hide toolbars
set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar

" Disable the visual bell
set vb t_vb=

" Set font
set guifont=Sauce_Code_Powerline:h16

" gui colour scheme
exe 'colo '.guicolourscheme

"Enable the powerline symbols
let g:airline_powerline_fonts = 1

if has("win32")
    set encoding=utf8
    set guifont=Sauce_Code_Powerline:h14
endif
