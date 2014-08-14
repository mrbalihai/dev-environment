" vim-markdown
let g:vim_markdown_folding_disabled=1

" Syntastic
let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_check_on_open = 1
let g:syntastic_enable_signs = 1
let g:syntastic_error_symbol = 'x'
let g:syntastic_warning_symbol = '>'

" You complete me
let g:ycm_semantic_triggers =  {
  \   'c' : ['->', '.'],
  \   'objc' : ['->', '.'],
  \   'ocaml' : ['.', '#'],
  \   'cpp,objcpp' : ['->', '.', '::'],
  \   'perl' : ['->'],
  \   'php' : ['->', '::'],
  \   'cs,java,javascript,d,vim,python,perl6,scala,vb,elixir,go' : ['.'],
  \   'ruby' : ['.', '::'],
  \   'lua' : ['.', ':'],
  \   'erlang' : [':'],
  \ }

" Vim Airline
set laststatus=2
let g:airline_theme = airlinetheme
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
if !has('gui_running')
    let g:airline_left_sep = ''
    let g:airline_right_sep = ''
endif

" CtrlP
" Get ctrlp to use the git ls-files to navigate the files
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files']
