" Syntax Higlighting
syntax on

" map file extensions to syntax
au BufNewFile,BufRead *.json setf javascript
au BufRead,BufNewFile *.aspx,*.asmx,*.ascx setf aspnet
au BufNewFile,BufRead *.svg setf svg
au BufNewFile,BufRead *.asp :set ft=aspjscript

set completeopt-=preview

