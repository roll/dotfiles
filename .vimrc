"
" Plugins
"

" Required mode
set nocompatible
filetype off

" Start adding plugins
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugins

" IDE
Plugin 'gmarik/Vundle.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'FelikZ/ctrlp-py-matcher'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'sjl/gundo.vim'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'Valloric/YouCompleteMe'
Plugin 'Raimondi/delimitMate'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'kshenoy/vim-signature'
Plugin 'tpope/vim-fugitive'
Plugin 'benmills/vimux'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'rking/ag.vim'
Plugin 'fweep/vim-tabber'
Plugin 'airblade/vim-gitgutter'
Plugin 'flazz/vim-colorschemes'
Plugin 'guns/xterm-color-table.vim'
Plugin 'editorconfig/editorconfig-vim'
" Plugin 'jistr/vim-nerdtree-tabs'

" Editor
Plugin 'tpope/vim-unimpaired'
Plugin 'godlygeek/tabular'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tommcdo/vim-exchange'
Plugin 'tpope/vim-surround'
Plugin 'terryma/vim-expand-region'
Plugin 'nelstrom/vim-visual-star-search'
Plugin 'tpope/vim-abolish'
Plugin 'tpope/vim-repeat'

" Languages
Plugin 'mattn/emmet-vim'
Plugin 'tpope/vim-markdown'
Plugin 'klen/python-mode'
Plugin 'lukaszkorecki/CoffeeTags'
Plugin 'kchmck/vim-coffee-script'
Plugin 'scrooloose/syntastic'
Plugin 'digitaltoad/vim-jade'
" Plugin 'mtscout6/vim-tagbar-css'

" Stop adding plugins
call vundle#end()
filetype plugin indent on

"
" General
"

" Leader
let mapleader="\<Space>"

" Wrapping
set wrap
set nolist
set linebreak
set colorcolumn=79

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
" set relativenumber

" Backups
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//

" Color theme
set background=dark
colorscheme lean
syntax enable

" Invisible chars
set listchars=tab:▸\ ,eol:¬

" Intendations
set autoindent
set smartindent
set ts=4 sts=4 sw=4 et
filetype indent on

" File types
filetype on
autocmd FileType yaml setl ts=2 sts=2 sw=2
autocmd FileType ruby setl ts=2 sts=2 sw=2
autocmd FileType html setl ts=2 sts=2 sw=2 nowrap
autocmd FileType htmldjango setl ts=2 sts=2 sw=2 nowrap
autocmd FileType scss setl ts=2 sts=2 sw=2 foldmethod=marker foldmarker={,}
autocmd FileType coffee setl ts=2 sts=2 sw=2
autocmd BufRead,BufNewFile dockerfile setfiletype dockerfile

"
" Bindings
"

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
nnoremap <Leader>f :CtrlP<CR>
nnoremap <Leader>g :TagbarClose<CR>:NERDTreeClose<CR>:GundoToggle<CR>
nnoremap <Leader>t :GundoHide<CR>:NERDTreeClose<CR>:TagbarToggle<CR>
nnoremap <Leader>n :GundoHide<CR>:TagbarClose<CR>:NERDTreeToggle<CR>
nnoremap <Leader>u :NERDTreeFind<CR>
vmap <Leader>v "vy :call VimuxSlime()<CR>
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P

" Buffers
set hidden
" au BufAdd,BufNewFile * nested tab sball
map <Leader>I :b#<CR>
map <Leader>O :CtrlPBuffer<CR>
map <Leader>H :bfirst<CR>
map <Leader>J :bprevious<CR>
map <Leader>K :bnext<CR>
map <Leader>L :blast<CR>

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
let g:lasttab=1
au TabLeave * let g:lasttab=tabpagenr()
map <silent> <Leader>i :exe "tabn ".g:lasttab<CR>
" map <silent> <Leader>o :CtrlPBuffer<CR>
map <silent> <Leader>h :tabfirst<CR>
map <silent> <Leader>j :tabprevious<CR>
map <silent> <Leader>k :tabnext<CR>
map <silent> <Leader>l :tablast<CR>

" Panes
map <Leader>( <C-w><
map <Leader>) <C-w>>
map <Leader>_ <C-w>-
map <Leader>+ <C-w>+
map <Leader><BS> <C-w>c
let g:tmux_navigator_no_mappings=1
nnoremap <silent> <C-i> :TmuxNavigatePrevious<CR>
" nnoremap <silent> o
nnoremap <silent> <C-h> :TmuxNavigateLeft<CR>
nnoremap <silent> <C-j> :TmuxNavigateDown<CR>
nnoremap <silent> <C-k> :TmuxNavigateUp<CR>
nnoremap <silent> <C-l> :TmuxNavigateRight<CR>

"
" Plugin settings
"

" Powerline
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup
set laststatus=2
set tabline=%!tabber#TabLine()
let g:tabber_filename_style = 'filename'

" Ctrlp
let g:ctrlp_max_files=0
let g:ctrlp_show_hidden=1
let g:ctrlp_match_func={ 'match': 'pymatcher#PyMatch' }
if executable('ag')
  let g:ctrlp_user_command='ag %s --nocolor --hidden -lg "" --ignore .git --ignore .cache --ignore __pycache__ --ignore .vim --ignore archive --ignore Trash'
endif

" NERDTree
let g:NERDTreeShowHidden=1
let g:NERDTreeWinPos="left"
let g:NERDTreeWinSize=30
let g:NERDTreeIgnore=['^xunit.xml$', '^.coverage$', '^npm-debug.log$', '^tags$', 'pyc$', '.git[[dir]]', '.cache[[dir]]', '.egg-info[[dir]]', '.tox[[dir]]', '.ropeproject[[dir]]', '.publish[[dir]]', '_site[[dir]]', '.sass-cache[[dir]]', 'coverage[[dir]]', 'node_modules[[dir]]', '.vagrant[[dir]]', '__pycache__[[dir]]', 'venv[[dir]]']
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
" let g:nerdtree_tabs_open_on_console_startup=1
" let g:nerdtree_tabs_focus_on_files=1
" let g:nerdtree_tabs_synchronize_view=0
" let g:nerdtree_tabs_autofind=1
" autocmd TabEnter * :NERDTreeTabsFind

" Tagbar
let g:tagbar_left=1
let g:tagbar_sort=0
let g:tagbar_width=30
let g:tagbar_autofocus=1
let g:tagbar_type_scss={
\  'ctagstype' : 'css',
\  'kinds' : [
\    'e:elements',
\  ]
\}

" Gundo
let g:gundo_right=0
let g:gundo_width=30

" Gitgutter
let gitgutter_eager=0

" NERDCommenter
let NERDSpaceDelims=1

" DelimitMate
let delimitMate_expand_cr=2
let delimitMate_expand_space=1
let delimitMate_expand_inside_quotes=1

" Emmet
" let g:user_emmet_expandabbr_key = '<C-y>'
let g:user_emmet_leader_key = '<C-e>'

" Vimux
function! VimuxSlime()
  call VimuxSendText(@v)
  call VimuxSendKeys("Enter")
endfunction

" Fugitive
autocmd BufReadPost fugitive://* set bufhidden=delete

" Trailing whitespaces
autocmd BufWritePre * :FixWhitespace

" Python
let g:pymode = 0
" let g:pymode_warnings = 0
" let g:pymode_quickfix_minheight = 0
" let g:pymode_quickfix_maxheight = 0
" let g:pymode_doc = 0
let g:pymode_rope = 0

"
" Custom functions
"

" Show name of the highlight
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

" Ranger integration
" https://github.com/hut/ranger/blob/master/doc/examples/vim_file_chooser.vim
function! RangeChooser()
    let temp = tempname()
    " The option "--choosefiles" was added in ranger 1.5.1. Use the next line
    " with ranger 1.4.2 through 1.5.0 instead.
    "exec 'silent !ranger --choosefile=' . shellescape(temp)
    exec 'silent !ranger --choosefiles=' . shellescape(temp)
    if !filereadable(temp)
        redraw!
        " Nothing to read.
        return
    endif
    let names = readfile(temp)
    if empty(names)
        redraw!
        " Nothing to open.
        return
    endif
    " Open in new tabs
    for name in names
        exec 'tabnew ' . fnameescape(name)
    endfor
    redraw!
endfunction
command! -bar RangerChooser call RangeChooser()
nnoremap <leader>m :<C-U>RangerChooser<CR>

