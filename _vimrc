" -- VIMRC --

" Easy Access Variables
let colourscheme    = 'monokai'
let guicolourscheme = 'monokai'
let airlinetheme    = 'hybrid'
let plugins         = [
\       'gmarik/Vundle.vim',
\       'plasticboy/vim-markdown',
\       'cakebaker/scss-syntax.vim',
\       'tpope/vim-fugitive',
\       'vim-scripts/svg.vim',
\       'OrangeT/vim-csharp',
\       'scrooloose/syntastic',
\       'marijnh/tern_for_vim',
\       'bling/vim-airline',
\       'airblade/vim-gitgutter',
\       'kien/ctrlp.vim',
\       'heavenshell/vim-jsdoc',
\       'iandoe/vim-osx-colorpicker',
\       'gorodinskiy/vim-coloresque',
\       'derekwyatt/vim-scala',
\       'vim-scripts/ASPJScript',
\       'PProvost/vim-ps1',
\       'sickill/vim-monokai',
\       'Valloric/YouCompleteMe'
\   ]

let configpath      = '~/.vim/config/'

" Disable VI compatability so the VIM enhancements work
set nocompatible

" Load files from the config folder
exe 'source' configpath.'vundle.vim'
exe 'source' configpath.'editor.vim'
exe 'source' configpath.'keymap.vim'
exe 'source' configpath.'netrw.vim'
exe 'source' configpath.'syntax.vim'
exe 'source' configpath.'plugins.vim'

" Load GUI options
if has('gui_running')
    exe 'source' configpath.'gui.vim'
endif
