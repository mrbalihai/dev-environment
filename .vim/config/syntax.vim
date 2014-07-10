"-- MAP FILE EXTENSIONS TO SYNTAX HIGHLIGHTING --

au BufNewFile,BufRead *.json setf javascript
au BufRead,BufNewFile *.aspx,*.asmx,*.ascx setf aspnet
au BufNewFile,BufRead *.svg setf svg 

autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
