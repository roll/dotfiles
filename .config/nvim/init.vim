" Plugins
call plug#begin('~/.config/nvim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
Plug 'leafgarland/typescript-vim'
Plug 'ianks/vim-tsx'
Plug 'terryma/vim-multiple-cursors'
Plug 'bronson/vim-trailing-whitespace'
Plug 'kshenoy/vim-signature'
Plug 'fweep/vim-tabber'
Plug 'airblade/vim-gitgutter'
Plug 'flazz/vim-colorschemes'
Plug 'liuchengxu/vista.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'terryma/vim-expand-region'
Plug 'nelstrom/vim-visual-star-search'
Plug 'christoomey/vim-tmux-navigator'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

" Leader
let mapleader="\<Space>"

" Wrapping
set nowrap
set nolist
set linebreak
set colorcolumn=100

" Search
set hlsearch
set incsearch
set smartcase
set ignorecase

" Folding
set foldenable
set foldmethod=indent
set foldlevelstart=1
set foldnestmax=10
set foldcolumn=3

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

" Backups
set backupdir=~/.config/.nvim/backup//
set directory=~/.config/.nvim/swap//
set undodir=~/.config/.nvim/undo//

" Colortheme
set background=dark
colorscheme roll
syntax enable

" Invisibles
set listchars=tab:▸\ ,eol:¬

" Intendations
set autoindent
set smartindent
set ts=4 sts=4 sw=4 et
filetype indent on

" Filetypes
filetype on
autocmd FileType typescript setl ts=2 sts=2 sw=2
autocmd FileType yaml setl ts=2 sts=2 sw=2
autocmd FileType ruby setl ts=2 sts=2 sw=2
autocmd FileType html setl ts=2 sts=2 sw=2 nowrap
autocmd FileType scss setl ts=2 sts=2 sw=2 foldmethod=marker foldmarker={,}
autocmd BufRead,BufNewFile dockerfile setfiletype dockerfile
autocmd BufRead,BufNewFile .eslintrc setfiletype yaml

" Actions
map j gj
map k gk
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)
nnoremap <Leader>r :so $MYVIMRC<CR>
nnoremap <Leader>a ggVG
nnoremap <Leader>s `[v`]
nnoremap <Leader>e o<ESC>k
nnoremap <Leader>E O<ESC>j
nnoremap <Leader>w :set list!<CR>
nnoremap <Leader>d :call <SID>SynStack()<CR>
nnoremap <Leader>m :Vista!!<CR>
nnoremap <Leader>n :NERDTreeToggle<CR>
nnoremap <Leader>u :NERDTreeFind<CR>
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P

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
map <silent> <Leader>i :exe "tabn ".g:lasttab<CR>
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

" Whitespaces
autocmd BufWritePre * :FixWhitespace

" Cocnvim
let g:coc_global_extensions = [
\ 'coc-tsserver',
\ 'coc-emmet',
\ 'coc-css',
\ 'coc-html',
\ 'coc-json',
\ 'coc-yank',
\ 'coc-prettier',
\ 'coc-eslint',
\ 'coc-python'
\]

" Nerdtree
autocmd bufenter * if
\ (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary")
\ | q | endif
let g:NERDTreeShowHidden=1
let g:NERDTreeWinPos="left"
let g:NERDTreeWinSize=30
let g:NERDTreeIgnore=[
\ '^xunit.xml$',
\ '^.coverage$',
\ '^selenium-debug.log$',
\ '^npm-debug.log$',
\ 'pyc$',
\ '.git$[[dir]]',
\ '.cache[[dir]]',
\ '.coverage[[dir]]',
\ '.egg-info[[dir]]',
\ '.tox[[dir]]',
\ '.ropeproject[[dir]]',
\ '.publish[[dir]]',
\ '_site[[dir]]',
\ '.sass-cache[[dir]]',
\ '.vagrant[[dir]]',
\ '__pycache__[[dir]]',
\ 'venv[[dir]]',
\ '.nyc_output[[dir]]'
\ ]

" Gitgutter
let gitgutter_eager=0

" Nerdcommenter
let NERDSpaceDelims=1

" Emmet
let g:user_emmet_leader_key = '<C-e>'

" Airline
let g:airline_powerline_fonts = 1
let g:airline_theme='base16'

" Markdown
let vim_markdown_preview_github=1
let vim_markdown_preview_hotkey='<C-m>'

" Highlights
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc
