autocmd bufenter * if
\ (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary")
\ | q | endif
autocmd BufWinEnter *.* NERDTreeFind | TmuxNavigateRight
let g:NERDTreeShowHidden=1
let g:NERDTreeWinPos="left"
let g:NERDTreeWinSize=25
" \ 'venv[[dir]]',
let g:NERDTreeIgnore=[
\ '^xunit.xml$',
\ '^.coverage$',
\ '^selenium-debug.log$',
\ '^npm-debug.log$',
\ 'pyc$',
\ '._cache[[dir]]',
\ '.git$[[dir]]',
\ '.coverage[[dir]]',
\ '.egg-info[[dir]]',
\ '.tox[[dir]]',
\ '.ropeproject[[dir]]',
\ '.publish[[dir]]',
\ '_site[[dir]]',
\ '.sass-cache[[dir]]',
\ '.vagrant[[dir]]',
\ '__pycache__[[dir]]',
\ '.nyc_output[[dir]]',
\ ]
