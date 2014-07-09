"-- NETRW - FILE EXPLORER CONFIG --

" Hide the info banner
let g:netrw_banner = 0

" Show the files in tree view
let g:netrw_liststyle = 3

" Sort the files - directories on top files underneath
let g:netrw_sort_sequence = '[\/]$,*'

" Use the previous window to open files in (like an IDE)
let g:netrw_browse_split = 4

" Hide VIM swap files
let g:netrw_list_hide= '.*\.swp$'

" If Vexplore is the only window remaining then close
autocmd bufenter * if (winnr("$") == 1 && exists("b:VexOpen") && b:VexOpen == 1) | q | endif

" http://stackoverflow.com/questions/5006950/setting-netrw-like-nerdtree
" Get netrw to toggle with Ctrl+E
function! ToggleVExplorer()
  if exists("t:expl_buf_num")
      let expl_win_num = bufwinnr(t:expl_buf_num)
      if expl_win_num != -1
          let cur_win_nr = winnr()
          exec expl_win_num . 'wincmd w'
          close
          exec cur_win_nr . 'wincmd w'
          unlet t:expl_buf_num
      else
          unlet t:expl_buf_num
      endif
      let b:VexOpen = 0 
  else
      exec '1wincmd w'
      Vexplore
      let t:expl_buf_num = bufnr("%")
      let b:VexOpen = 1
  endif
endfunction
