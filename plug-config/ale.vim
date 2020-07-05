let g:ale_fix_on_save = 0


" Tell ALE to use OmniSharp for linting C# files, and no other linters.
let g:ale_linters = { 'cs': ['OmniSharp'] }

let g:ale_fixers = {
  \ '*': ['remove_trailing_lines', 'trim_whitespace']
  \ }
  
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'


let g:ale_sign_error = '⚠'
let g:ale_sign_warning = '⚠'

let g:ale_set_balloons = 1



let g:ale_lint_on_text_changed = 'never'

