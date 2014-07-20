" -- VIMRC --

" Easy Access Variables
let colourscheme    = 'bubblegum'
let guicolourscheme = 'bubblegum'

let plugins         = [
\       'gmarik/Vundle.vim',
\       'plasticboy/vim-markdown',
\       'flazz/vim-colorschemes',
\       'cakebaker/scss-syntax.vim',
\       'tpope/vim-fugitive',
\       'vim-scripts/svg.vim',
\       'OrangeT/vim-csharp',
\       'scrooloose/syntastic',
\       'marijnh/tern_for_vim',
\       'bling/vim-airline',
\       'airblade/vim-gitgutter',
\       'kien/ctrlp.vim',
\       'scrooloose/nerdtree',
\       'heavenshell/vim-jsdoc',
\       'junegunn/limelight.vim',
\       'junegunn/goyo.vim',
\       'Valloric/YouCompleteMe',
\       'fatih/vim-go'
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

" Load gVim options
if has('gui_running')
    exe 'source' configpath.'gVim.vim'
endif
