"-- VUNDLE CONFIGURATION AND PLUGINS --

" Required for vundle
filetype off

" Setup the runtime for vundle package manager
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugins
Plugin 'gmarik/Vundle.vim'
Plugin 'plasticboy/vim-markdown'
Plugin 'flazz/vim-colorschemes'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-scripts/svg.vim'
Plugin 'OrangeT/vim-csharp'

" Call after plugins to get vundle to do it's thing
call vundle#end()
filetype plugin indent on

" Turn file detection back on
filetype on
