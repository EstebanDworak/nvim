
"
" Ultisnips
"
" Disable trigger on TAB. CoC takes care of it.
let g:UltiSnipsExpandTrigger="<nop>"

"
" CoC settings.
" Coc ist used for auto completion and diagnostics.
" Diagnostics are handled by ALE. See coc-settings.json (:CocConfig).
"
let g:coc_global_extensions=[
\   'coc-marketplace',
\   'coc-tsserver',
\   'coc-prettier',
\   'coc-json',
\   'coc-emmet',
\   'coc-clangd',
\   'coc-snippets',
\   'coc-pairs',
\   'coc-css',
\   'coc-markdownlint',
\]
"
" C# settings
"
" To future you, if documentation on stdlib methods does not work,
" see your comment on this issue:
" https://github.com/OmniSharp/omnisharp-roslyn/issues/1667#issuecomment-640107324
"
" Use the async version.
let g:OmniSharp_server_stdio=1
" Enable parameter expansion. This needs ultisnips to be installed.
let g:OmniSharp_want_snippet=1
let g:OmniSharp_selector_ui='fzf'
let g:omnicomplete_fetch_full_documentation=1

function! GoCSharp()
    nnoremap <buffer> <leader>gd :OmniSharpGotoDefinition<CR>
    nnoremap <buffer> <leader>gr :OmniSharpFindUsages<CR>
    nnoremap <buffer> <leader>gi :OmniSharpFindImplementations<CR>

    nnoremap <buffer> <leader>rn :OmniSharpRename<CR>
    nnoremap <buffer> <leader>fx :OmniSharpFixUsings<CR>

    nnoremap <buffer> <leader>ca :OmniSharpGetCodeActions<CR>

    autocmd BufWritePre *.cs :OmniSharpCodeFormat
endfunction

"
" CoC settings
"
" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

function! GoCoc()
    nmap <buffer> <leader>gd <Plug>(coc-definition)
    nmap <buffer> <leader>gr <Plug>(coc-references)
    nmap <buffer> <leader>rn <Plug>(coc-rename)
endfunction
