" Helper function to save the session to my vim dir
function! s:SaveSession(sessionName)
    execute "mksession! ~/.vim/session/" . a:sessionName . ".vim"
endfunction

function! s:RestoreSession(sessionName)
    execute "source ~/.vim/session/" . a:sessionName . ".vim"
endfunction

function! s:DeleteSession(sessionName)
    delete(expand("~/.vim/session/" . a:sessionName . ".vim"))
endfunction

command! -nargs=1 SaveSession call s:SaveSession(<f-args>)
command! -nargs=1 RestoreSession call s:RestoreSession(<f-args>)
command! -nargs=1 DeleteSession call s:DeleteSession(<f-args>)
