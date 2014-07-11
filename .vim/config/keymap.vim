"-- KEY MAPPINGS --

" Remap jj to the escape key for speedier way of escaping
inoremap jj <Esc>

" disable arrow keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

" Map Ctrl+E to toggle the file explorer
map <silent> <C-n> :call ToggleVExplorer()<CR>

" Make the backspace key delete on insert mode
set backspace=indent,eol,start
