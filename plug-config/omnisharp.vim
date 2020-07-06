
let g:OmniSharp_server_stdio=1
let g:OmniSharp_want_snippet=1
let g:OmniSharp_selector_ui = 'ctrlp'  " Use ctrlp.vim
let g:omnicomplete_fetch_full_documentation=0
let g:OmniSharp_highlighting = 2
let g:OmniSharp_diagnostic_showid = 1


function! GoCSharp()
    nnoremap <buffer> <leader>gd :OmniSharpGotoDefinition<CR>
    nnoremap <buffer> <leader>gr :OmniSharpFindUsages<CR>
    nnoremap <buffer> <leader>gi :OmniSharpFindImplementations<CR>
   nnoremap <buffer> <leader>gd :OmniSharpDocumentation<CR>

    nnoremap <buffer> <leader>rn :OmniSharpRename<CR>
    nnoremap <buffer> <leader>fx :OmniSharpFixUsings<CR>

    nnoremap <buffer> <leader>ca :OmniSharpGetCodeActions<CR>

    autocmd BufWritePre *.cs :OmniSharpCodeFormat
endfunction



let g:OmniSharp_diagnostic_overrides = {
"\ 'IDE0010': {'type': 'I'},
"\ 'IDE0055': {'type': 'W', 'subtype': 'Style'},
\ 'IDE0003': {'type': 'None'},
\ 'IDE0058': {'type': 'None'},
\ 'SA1200': {'type': 'None'},
\ 'SA1600': {'type': 'W', 'subtype': 'style'},
"\ 'RemoveUnnecessaryImportsFixable': {'type': 'None'}
\}
