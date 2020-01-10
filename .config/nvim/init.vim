" Plugins
" https://github.com/junegunn/vim-plug#installation
call plug#begin('~/.config/nvim/plugged')

" TypeScript
" https://github.com/mhartington/nvim-typescript#installation
Plug 'HerringtonDarkholme/yats.vim'
Plug 'mhartington/nvim-typescript', {'do': './install.sh'}
Plug 'Shougo/deoplete.nvim'
Plug 'Shougo/denite.nvim'

call plug#end()

" Typescript
let g:deoplete#enable_at_startup = 1
