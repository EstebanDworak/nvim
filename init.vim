syntax on


" PLUGINS
call plug#begin('~/.config/nvim/autoload/plugged')
    Plug 'OmniSharp/omnisharp-vim'
    Plug 'w0rp/ale'
    Plug 'ctrlpvim/ctrlp.vim'
    Plug 'editorconfig/editorconfig-vim'
    Plug 'preservim/nerdtree'
    Plug 'jiangmiao/auto-pairs'
    Plug 'tpope/vim-fugitive'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'tomasiser/vim-code-dark'
    Plug 'SirVer/ultisnips'
    "Plug 'prabirshrestha/asyncomplete.vim'
    "Plug 'prabirshrestha/async.vim'
    Plug 'Xuyuanp/nerdtree-git-plugin'
    Plug 'airblade/vim-gitgutter'

    "Plug 'mhinz/vim-signify'
    "Plug 'rodpl/vim-dotnet'
    "Plug 'junegunn/fzf'
    "Plug 'wincent/terminus'

    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    "Plug 'shougo/echodoc'
    "Plug 'preservim/nerdcommenter'
    "Plug 'liuchengxu/vim-which-key'
    "Plug 'junegunn/gv.vim'
    "Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
call plug#end()



" LETS
let g:mapleader = "\<Space>"


" SETS
set shortmess=

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
set cmdheight=3
set colorcolumn=80
set updatetime=300


" STYLE
highlight ColorColumn ctermbg=0 guibg=lightgrey
colorscheme codedark


" ADITIONAL CONFIG
source $HOME/.config/nvim/plug-config/omnisharp.vim
source $HOME/.config/nvim/themes/airline.vim
source $HOME/.config/nvim/plug-config/nerd.vim
source $HOME/.config/nvim/plug-config/echodoc.vim
source $HOME/.config/nvim/plug-config/ale.vim
source $HOME/.config/nvim/plug-config/ctrlp.vim
source $HOME/.config/nvim/plug-config/signify.vim
"source $HOME/.config/nvim/plug-config/asyncomplete.vim
source $HOME/.config/nvim/plug-config/ulti.vim
source $HOME/.config/nvim/plug-config/coc.vim
"source $HOME/.config/nvim/vim-plug/plugins.vim
"source $HOME/.config/nvim/general/settings.vim
"source $HOME/.config/nvim/keys/mappings.vim
"source $HOME/.config/nvim/themes/onedark.vim
"source $HOME/.config/nvim/plug-config/rnvimr.vim


"MAPPINGS
"imap <C-Space> <C-x><C-o>
imap <C-s> <Esc>:w<CR>

nmap <C-s> :w<CR>
nmap <leader>s :source $MYVIMRC<CR>
nmap <Leader>o o<Esc>^Da
nmap <Leader>O O<Esc>^Da
nmap <C-b> :NERDTreeToggle<CR>
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l
nmap <C-v> :vsplit<CR>
nmap <C-x> :lclose<bar>b#<bar>bd #<CR>
nmap <C-n> :vsplit<CR> :CtrlP<CR>
nmap <leader>ca :OmniSharpGetCodeActions<CR>
nmap <leader>f :OmniSharpCodeFormat<CR>
nmap <TAB> :bnext<CR>
nmap <S-TAB> :bprevious<CR>

vnoremap < <gv
vnoremap > >gv
