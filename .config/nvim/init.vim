"
" General
"

" Install
call plug#begin('~/.config/nvim/plugged')

" IDE
Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips'
Plug 'mattn/emmet-vim'
Plug 'fweep/vim-tabber'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'liuchengxu/vista.vim'
Plug 'kshenoy/vim-signature'
Plug 'airblade/vim-gitgutter'
Plug 'flazz/vim-colorschemes'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'christoomey/vim-tmux-navigator'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'stevearc/aerial.nvim'
Plug 'simrat39/symbols-outline.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'hedyhli/outline.nvim'

" Editor
Plug 'terryma/vim-multiple-cursors'
Plug 'bronson/vim-trailing-whitespace'
Plug 'nelstrom/vim-visual-star-search'
Plug 'terryma/vim-expand-region'
Plug 'scrooloose/nerdcommenter'
Plug 'Raimondi/delimitMate'

" Languages
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'leafgarland/typescript-vim'
Plug 'ianks/vim-tsx'
Plug 'prisma/vim-prisma'
Plug 'wuelnerdotexe/vim-astro'
Plug 'sheerun/vim-polyglot'

" AI
" :Copilot setup
Plug 'github/copilot.vim'
" :Codeium Auth
Plug 'quangnguyen30192/cmp-nvim-ultisnips'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'nvim-lua/plenary.nvim'
" Plug 'Exafunction/codeium.nvim'

call plug#end()

" Leader
let mapleader="\<Space>"

" Wrapping
set nowrap
set nolist
set linebreak
set colorcolumn=80

" Search
set hlsearch
set incsearch
set smartcase
set ignorecase

" Folding
set foldenable
set foldmethod=indent
set foldlevelstart=3
set foldnestmax=10
set foldcolumn=0

" Interface
set ruler
set number
set cursorline
set lazyredraw
set showmatch
set showcmd
set wildmenu
set visualbell
set scrolloff=1
set shortmess+=I
set display+=lastline
set timeoutlen=3000
set ttimeoutlen=0
set mouse=a

" Colortheme
set background=dark
colorscheme lean
syntax enable

" Invisibles
set listchars=tab:▸\ ,eol:¬

" Intendations
set autoindent
set smartindent
set ts=4 sts=4 sw=4 et
filetype indent on

" Formatters
let g:neoformat_enabled_typescript = ['rome']

" Filetypes
filetype on
autocmd FileType sql setl ts=2 sts=2 sw=2
autocmd FileType yaml setl ts=2 sts=2 sw=2
autocmd FileType yaml setl ts=2 sts=2 sw=2
autocmd FileType json setl ts=2 sts=2 sw=2
autocmd FileType ruby setl ts=2 sts=2 sw=2
autocmd FileType html setl ts=2 sts=2 sw=2
autocmd FileType markdown setl wrap
autocmd FileType javascript setl ts=2 sts=2 sw=2
autocmd FileType typescript setl ts=2 sts=2 sw=2
autocmd FileType typescript.tsx setl ts=2 sts=2 sw=2
autocmd FileType typescript :call matchadd('typescriptGlobalObjects', 'type:')
autocmd FileType typescript :call matchadd('typescriptGlobalObjects', 'type :')
autocmd FileType typescript :call matchadd('typescriptGlobalObjects', 'type=')
autocmd FileType typescript :call matchadd('typescriptGlobalObjects', 'type =')
autocmd FileType typescript :call matchadd('typescriptGlobalObjects', 'type)')

" Autocommands
aug python
  au!
  au BufWrite *.py call CocAction('runCommand', 'python.sortImports')
  au BufWrite *.py call CocAction('format')
aug END
aug typescript
  au!
  au BufWrite *.ts call CocAction('runCommand', 'editor.action.organizeImport')
aug END
aug typescript.tsx
  au!
  au BufWrite *.tsx call CocAction('runCommand', 'editor.action.organizeImport')
aug END

" Actions
map , `
map j gj
map k gk
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)
nnoremap <Leader>r :e!<CR>
nnoremap <Leader>a ggVG
nnoremap <Leader>s `[v`]
nnoremap <Leader>S :set list!<CR>
nnoremap <Leader>e o<ESC>k
nnoremap <Leader>E O<ESC>j
nnoremap <Leader>w :w<CR>
nnoremap <Leader>W :wa<CR>
nnoremap <Leader>D :call <SID>SynStack()<CR>
nnoremap <Leader>m :Outline<CR>
" nnoremap <Leader>i :call codeium#Chat()<CR>
nnoremap <Leader>i :noh<CR>
" nnoremap <Leader>m :Vista!!<CR>
nnoremap <Leader>n :NERDTreeToggle<CR>
nnoremap <Leader>u :NERDTreeFind<CR>
nnoremap <Leader>f :TmuxNavigateRight<CR>:Files<CR>
nnoremap <Leader>F :TmuxNavigateRight<CR>:Ag<Space>
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P

" Buffers
set hidden
map <Leader>I :b#<CR>
map <Leader>J :bprevious<CR>
map <Leader>K :bnext<CR>

" Tabs
map <Leader>` :tabnew<CR>
noremap <Leader>1 1gt
noremap <Leader>2 2gt
noremap <Leader>3 3gt
noremap <Leader>4 4gt
noremap <Leader>5 5gt
noremap <Leader>6 6gt
noremap <Leader>7 7gt
noremap <Leader>8 8gt
noremap <Leader>9 :tabm -1<CR>
noremap <Leader>0 :tabm +1<CR>
noremap <Leader>- <C-w>s
noremap <Leader>= <C-w>v
" map <silent> <Leader>i :exe "tabn ".g:lasttab<CR>
map <silent> <Leader>j :tabprevious<CR>
map <silent> <Leader>k :tabnext<CR>
au TabLeave * let g:lasttab=tabpagenr()
let g:lasttab=1

" Panes
map <Leader>( <C-w><
map <Leader>) <C-w>>
map <Leader>_ <C-w>-
map <Leader>+ <C-w>+
map <Leader><BS> <C-w>c
nnoremap <silent> <C-i> :TmuxNavigatePrevious<CR>
nnoremap <silent> <C-h> :TmuxNavigateLeft<CR>
nnoremap <silent> <C-j> :TmuxNavigateDown<CR>
nnoremap <silent> <C-k> :TmuxNavigateUp<CR>
nnoremap <silent> <C-l> :TmuxNavigateRight<CR>
let g:tmux_navigator_no_mappings=1

" Spelling
map <Leader>l :set spelllang=en<CR> :set spell<CR>
map <Leader>L :set spelllang=en<CR> :set nospell<CR>

"
" Plugins
"

" Nerdtree
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
\ '^rome-socket',
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
\ 'rome-logs[[dir]]',
\ ]

" Cocnvim
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

" Ultisnip
let g:UltiSnipsSnippetsDir = '~/.config/nvim/snipped'
let g:UltiSnipsSnippetDirectories = ['~/.config/nvim/snipped']
let g:UltiSnipsExpandTrigger="<C-s>"

" Codeium
let g:codeium_enable_chat = 1

" Gitgutter
let gitgutter_eager=0

" Nerdcommenter
let NERDSpaceDelims=1

" Vista
" let g:vista_default_executive = 'coc'
" let g:vista_ignore_kinds = ['Variable']
" let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]
" let g:vista#renderer#enable_icon = 1
" let g:vista#renderer#icons = {
\ "function": "\uf794",
\ "variable": "\uf71b",
\}

" Emmet
let g:user_emmet_leader_key = '<C-e>'

" Tabber
let g:tabber_filename_style = 'filename'

" Airline
let g:airline_theme='papercolor'
let g:airline_powerline_fonts = 1
let g:airline_symbols = {}
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

" Markdown
let vim_markdown_preview_github=1
let vim_markdown_preview_hotkey='<C-m>'

" Whitespaces
autocmd BufWritePre * :FixWhitespace

" Highlights
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

" Run lua configs
lua require('cmp-config')
" lua require('codeium-config')
lua require('outline-config')
