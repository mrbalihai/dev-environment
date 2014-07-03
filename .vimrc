" -- VIMRC --

" Easy Access Variables
let colourscheme    = 'beauty256'
let configpath      = '~/.vim/config/'


" Disable VI compatability so the VIM enhancements work
set nocompatible

" Load files from the config folder
for filepath in split(globpath(configpath, '*.vim'), '\n')
  exe 'source' filepath
endfor
