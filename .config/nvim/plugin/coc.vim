nmap <silent> gp <Plug>(coc-diagnostic-prev)
nmap <silent> gn <Plug>(coc-diagnostic-next)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
inoremap <expr> <C-j> pumvisible() ? "\<C-n>" : "\<C-j>"
inoremap <expr> <C-k> pumvisible() ? "\<C-p>" : "\<C-k>"
inoremap <silent><expr> <Tab> pumvisible() ? coc#_select_confirm() : "\<Tab>"
" inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() :
" \ "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
nnoremap <silent> <Leader>d :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction
let g:coc_global_extensions = [
\ 'coc-tsserver',
\ 'coc-biome',
\ 'coc-emmet',
\ 'coc-css',
\ 'coc-html',
\ 'coc-json',
\ 'coc-yank',
\ 'coc-eslint',
\ 'coc-pyright',
\ 'coc-prettier',
\ 'coc-snippets'
\]
" https://github.com/neoclide/coc.nvim/issues/531
nmap <Esc> :call coc#float#close_all() <CR>
