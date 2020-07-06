let g:ale_fix_on_save = 0
let g:ale_linters = { 'cs': ['OmniSharp'] }
let g:ale_echo_msg_format = '[%severity%] [%linter%] %s'
let g:ale_set_balloons = 1
let g:ale_lint_on_text_changed = 'never'

let g:ale_fixers = {
  \ '*': ['remove_trailing_lines', 'trim_whitespace']
  \ }
  

" WARNING
let g:ale_sign_warning = '▌'
let g:ale_echo_msg_warning_str = 'W'
highlight ALEWarning guisp=#D7BA7D gui=undercurl
highlight ALEWarningSign guifg=#D7BA7D

" ERROR
let g:ale_sign_error = '▌'
let g:ale_echo_msg_error_str = 'E'
highlight ALEError guisp=#F44747 gui=undercurl
highlight ALEErrorSign guifg=#F44747

" WARNING STYLE
highlight ALEStyleWarning guisp=#608B4E gui=undercurl
highlight ALEStyleWarningSign guifg=#608B4E

" ERROR STYLE
highlight ALEStyleError guisp=#608B4E gui=undercurl
highlight ALEStyleErrorSign guifg=#608B4E

