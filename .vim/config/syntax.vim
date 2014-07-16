"-- MAP FILE EXTENSIONS TO SYNTAX HIGHLIGHTING --

au BufNewFile,BufRead *.json setf javascript
au BufRead,BufNewFile *.aspx,*.asmx,*.ascx setf aspnet
au BufNewFile,BufRead *.svg setf svg

" Syntastic
let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_check_on_open = 1
let g:syntastic_enable_signs = 1
let g:syntastic_error_symbol = 'x'
let g:syntastic_warning_symbol = '>'
