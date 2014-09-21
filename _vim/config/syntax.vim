"-- MAP FILE EXTENSIONS TO SYNTAX HIGHLIGHTING --

" Syntax Higlighting
syntax on

" map file extensions to syntax
au BufNewFile,BufRead *.json setf javascript
au BufRead,BufNewFile *.aspx,*.asmx,*.ascx setf aspnet
au BufNewFile,BufRead *.svg setf svg

set completeopt-=preview

let g:syntastic_html_tidy_ignore_errors = ["proprietary attribute \"ng-"]
