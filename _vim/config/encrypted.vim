" If the file is encrypted (has a key defined) then disable temp files and
" swap files
autocmd BufReadPost * if &key != "" | set noswapfile nowritebackup viminfo= nobackup noshelltemp history=0 secure | endif

" if the file is '.pass' then enable folding on indent
autocmd BufRead,BufNewFile .pass set fdm=indent fdn=1 fcl=all fdl=0
