syntax on


" PLUGINS
call plug#begin('~/.config/nvim/autoload/plugged')
    Plug 'OmniSharp/omnisharp-vim'
    Plug 'w0rp/ale'
    Plug 'ctrlpvim/ctrlp.vim'  
    Plug 'preservim/nerdtree'
    Plug 'jiangmiao/auto-pairs'
    Plug 'tpope/vim-fugitive'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'tomasiser/vim-code-dark'
    Plug 'sirver/ultisnips'
    Plug 'vim-scripts/AutoComplPop'


    "Plug 'preservim/nerdcommenter'
    "Plug 'liuchengxu/vim-which-key'
    "Plug 'junegunn/gv.vim'
    "Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
call plug#end()


" LETS
let g:mapleader = "\<Space>"
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn|node_modules)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']


" SETS
set guicursor=
set mouse=a
set noshowmatch
set relativenumber
set nohlsearch
set hidden
set noerrorbells
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set nu
set nowrap
set smartcase


set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set termguicolors
set scrolloff=8

set clipboard=unnamedplus               " Copy paste between vim and everything else
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set cmdheight=4

"set updatetime=50
"set shortmess+=c
set colorcolumn=80


" STYLE
highlight ColorColumn ctermbg=0 guibg=lightgrey
colorscheme codedark


" ADITIONAL CONFIG
source $HOME/.config/nvim/plug-config/omnisharp.vim
source $HOME/.config/nvim/themes/airline.vim
source $HOME/.config/nvim/plug-config/nerd.vim
"source $HOME/.config/nvim/vim-plug/plugins.vim
"source $HOME/.config/nvim/general/settings.vim
"source $HOME/.config/nvim/keys/mappings.vim
"source $HOME/.config/nvim/themes/onedark.vim
"source $HOME/.config/nvim/plug-config/rnvimr.vim


"MAPPINGS
imap <C-Space> <C-x><C-o>