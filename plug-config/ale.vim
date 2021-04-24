let g:ale_linters = {
      \   'python': ['flake8', 'pylint'],
      \   'go': ['gofmt'],
      \ }

let g:ale_fixers = {
      \   '*': ['prettier', 'remove_trailing_lines', 'trim_whitespace'],
      \   'python': ['isort', 'yapf'],
      \   'go': ['gofmt', 'goimports']
      \ }

nmap <silent> <F10> :ALEFix<CR>
nmap <silent>ar :ALERename<CR>

nmap <silent> [e <Plug>(ale_previous_wrap)
nmap <silent> ]e <Plug>(ale_next_wrap)

let g:ale_fix_on_save = 1
let g:ale_lint_on_text_changed = "always"
let g:ale_virtualenv_dir_names = []
let g:ale_sign_error = ">"
let g:ale_sign_warning = "!"

let b:ale_python_flake8_executable = 'D:/Program Files/Python39/Lib/site-packages/flake8'
let b:ale_python_flake8_use_global = 1
let b:ale_python_pylint_executable = 'D:/Program Files/Python39/Lib/site-packages/pylint'
let b:ale_python_pylint_use_global = 1
