let g:startify_session_dir=$HOME.'\AppData\Local\nvim\sessions'

let g:startify_lists = [
          \ { 'type': 'dir',       'header': ['   Current Directory: '. getcwd()] },
          \ { 'type': 'files',     'header': ['   Files']            },
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ ]

let g:startify_bookmarks = [
            \ {'n': $HOME.'\AppData\Local\nvim\init.vim'},
            \ {'c': 'D:\Languages\'},
            \ {'p': 'D:\Languages\Python'}
            \ ]

let g:startify_session_autoload = 1
let g:startify_session_persistence = 1
let g:startify_enable_special = 0
let g:startify_change_to_vcs_root = 1
let g:startify_session_delete_buffers = 1

let g:startify_custom_header = [
                  \ '                               ____   ____.__         ',
                  \ '               ____   ____  ___\   \ /   /|__| _____  ',
                  \ '              /    \_/ __ \/  _ \   Y   / |  |/     \ ',
                  \ '             |   |  \  ___(  <_> )     /  |  |  Y Y  \',
                  \ '             |___|  /\___  >____/ \___/   |__|__|_|  /',
                  \ '                  \/     \/                        \/ ',
                  \ ]

