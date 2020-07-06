let g:asyncomplete_auto_popup = 0

function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <TAB>
  \ pumvisible() ? "\<C-n>" :
  \ <SID>check_back_space() ? "\<TAB>" :
  \ asyncomplete#force_refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"


 "Use <c-space> to trigger completion.
imap <c-space> <Plug>(asyncomplete_force_refresh)


" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif


function s:completor(opt, ctx)
  call mylanguage#get_async_completions({candidates, startcol -> asyncomplete#complete(a:opt['name'], a:ctx, startcol, candidates) })
endfunction

au User asyncomplete_setup call asyncomplete#register_source({
    \ 'name': 'flow',
    \ 'whitelist': ['javascript'],
    \ 'completor': function('s:completor'),
    \ })
