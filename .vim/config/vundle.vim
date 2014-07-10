"-- VUNDLE CONFIGURATION AND PLUGINS --

" Required for vundle
filetype off

" Setup the runtime for vundle package manager
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Register Plugins
for pluginname in plugins
    Plugin pluginname
endfor

" Call after plugins to get vundle to do it's thing
call vundle#end()
filetype plugin indent on

" Turn file detection back on
filetype on
