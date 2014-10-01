" Turn relative line numbers on/off depending on focus mode
set number
autocmd FocusLost * :set relativenumber!
autocmd FocusGained * :set relativenumber
autocmd InsertEnter * :set relativenumber!
autocmd InsertLeave * :set relativenumber
autocmd BufEnter * :set relativenumber
autocmd BufLeave * :set relativenumber!
