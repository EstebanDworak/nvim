
"  8888888b.  888       888  .d88888b.  8888888b.         d8888 888    d8P  
"  888   Y88b 888   o   888 d88P   Y88b 888   Y88b       d88888 888   d8P   
"  888    888 888  d8b  888 888     888 888    888      d88P888 888  d8P    
"  888    888 888 d888b 888 888     888 888   d88P     d88P 888 888d88K     
"  888    888 888d88888b888 888     888 8888888P"     d88P  888 8888888b    
"  888    888 88888P Y88888 888     888 888 T88b     d88P   888 888  Y88b   
"  888  .d88P 8888P   Y8888 Y88b. .d88P 888  T88b   d8888888888 888   Y88b  
"  8888888P"  888P     Y888   Y88888P   888   T88b d88P     888 888    Y88b 

" Best mappings on earth. Kind of...





" ********************************
" ******* GENERAL SETTINGS *******
" ********************************

" Reload source.
nmap <leader>r :source $MYVIMRC<CR>


" Ctrl-Backspace shortcut.
"Set SPACE as map leader key.
let mapleader = "\<Space>"

" Easy escape to normal mode with Ctrl-c
nnoremap <C-c> <Esc>





" **********************************
" ****** NORMAL MODE MAPPINGS ******
" **********************************



" Open new buffer and split with CtrlP.
nmap <leader>n :vsplit<CR>:CtrlP<CR>
" Resizing windows.
nmap <leader><C-j> :resize -1<CR>
nmap <leader><C-k> :resize +1<CR>
nmap <leader><C-h> :vertical resize -1<CR>
nmap <leader><C-l> :vertical resize +1<CR> 
" Move in splits.
nnoremap <leader>h <C-w>h
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k
nnoremap <leader>l <C-w>l





inoremap <S-BS> <C-W>



" I hate escape more than anything else
inoremap jk <Esc>
inoremap kj <Esc>

" Easy CAPS
inoremap <c-u> <ESC>viwUi
nnoremap <c-u> viwU<Esc>

" Ctrl P for openning Rnvmr
nnoremap <C-p> :RnvimrToggle<CR>
"TAB in general mode will move to text buffer
nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<CR>

" Alternate way to save
nnoremap <C-s> :w<CR>
" Alternate way to quit
nnoremap <C-Q> :wq!<CR>
" <TAB>: completion.
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"


nmap <leader><C-m> :e ~/.config/nvim/keys/mappings.vim<CR>


nnoremap <leader>p :vsplit<CR> :CtrlP<CR> 
nnoremap <leader><C-n> :vsplit<CR>

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" Better window navigation

nnoremap <Leader>o o<Esc>^Da
nnoremap <Leader>O O<Esc>^Da

if has('nvim')
  tnoremap <Esc> <C-\><C-n>
  tnoremap <M-[> <Esc>
  tnoremap <C-v><Esc> <Esc>
endif 

