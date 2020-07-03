" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    "Plug 'ctrlpvim/ctrlp.vim'  
    "" Better Syntax Support
    ""Plug 'sheerun/vim-polyglot'
    "" File Explorer
    "" Plug 'scrooloose/NERDTree'
    "" Auto pairs for '(' '[' '{'
    "Plug 'jiangmiao/auto-pairs'
    "Plug 'joshdick/onedark.vim'
    "Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
    ""Plug 'ap/vim-buftabline'
    ""Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
    ""Plug 'caksoylar/vim-mysticaltutor'
    ""Plug 'prettier/vim-prettier', { 'do': 'npm install' }
    "Plug 'tpope/vim-fugitive'
    ""Plug 'digitaltoad/vim-pug'
    ""Plug 'vim-airline/vim-airline'
    ""Plug 'cakebaker/scss-syntax.vim'
    "Plug 'pangloss/vim-javascript'

    "Plug 'vim-airline/vim-airline'
    "Plug 'vim-airline/vim-airline-themes'
    "Plug 'tomasiser/vim-code-dark'
    "Plug 'preservim/nerdcommenter'
    "Plug 'liuchengxu/vim-which-key'
    "Plug 'tpope/vim-fugitive'
    "Plug 'junegunn/gv.vim'
    "Plug 'OmniSharp/omnisharp-vim'
    Plug 'OmniSharp/omnisharp-vim'
    Plug 'w0rp/ale'



call plug#end()
