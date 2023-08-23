function! neoformat#formatters#typescript#enabled() abort
    return ['rome']
endfunction
function! neoformat#formatters#typescript#rome() abort
    return {
        \ 'exe': 'rome',
        \ 'args': ['format', '--stdin-file-path', '"%:p"'],
        \ 'try_node_exe': 1,
        \ 'stdin': 1
        \ }
endfunction
