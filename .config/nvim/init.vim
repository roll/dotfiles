"
" General
"

" Plugins
call plug#begin('~/.config/nvim/plugged')
Plug 'airblade/vim-gitgutter'
Plug 'christoomey/vim-tmux-navigator'
Plug 'flazz/vim-colorschemes'
Plug 'fweep/vim-tabber'
Plug 'github/copilot.vim'
Plug 'hedyhli/outline.nvim'
Plug 'ianks/vim-tsx'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'kshenoy/vim-signature'
Plug 'leafgarland/typescript-vim'
Plug 'mattn/emmet-vim'
Plug 'nelstrom/vim-visual-star-search'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
Plug 'prisma/vim-prisma'
Plug 'scrooloose/nerdcommenter'
Plug 'sheerun/vim-polyglot'
Plug 'terryma/vim-expand-region'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
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
nnoremap <Leader>v :so %<CR>
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
nnoremap <Leader>i :noh<CR>
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

" Highlights
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

" Run lua configs
lua require('init')
