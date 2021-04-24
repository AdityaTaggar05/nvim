syntax enable                                 " Enables syntax highlighing
let mapleader=" "                             " Set Leader to Space
set hidden                                    " Required to keep multiple buffers open multiple buffers
set undofile                                  " Creates Undofiles for buffers
set nowrap                                    " Display long lines as just one line
set encoding=utf-8                            " The encoding displayed
set fileencoding=utf-8                        " The encoding written to file
set pumheight=10                              " Makes popup menu smaller
set ruler                                     " Show the cursor position all the time
set cmdheight=2                               " More space for displaying messages
set iskeyword+=-                              " treat dash separated words as a word text object"
set mouse=a                                   " Enable your mouse
set splitright                                " Vertical splits will automatically be to the right
set splitbelow                                " Horizontal splits will automatically be below
set conceallevel=0                            " So that I can see `` in markdown files
set tabstop=2                                 " Insert 2 spaces for a tab
set shiftwidth=2                              " Change the number of space characters inserted for indentation
set smarttab                                  " Makes tabbing smarter will realize you have 2 vs 4
set expandtab                                 " Converts tabs to spaces
set smartindent                               " Makes indenting smart
set autoindent                                " Good auto indent
set laststatus=0                              " Always display the status line
set number                                    " Line numbers
set background=dark                           " tell vim what the background color looks like
set nobackup                                  " This is recommended by coc
set nowritebackup                             " This is recommended by coc
set updatetime=50                             " Faster completion
set timeoutlen=500                            " By default timeoutlen is 1000 ms
set formatoptions=cro                         " Stop newline continution of comments
set clipboard=unnamedplus                     " Copy paste between vim and everything else
set autochdir                                 " Your working directory will always be the same as your working directory

filetype plugin indent on                     " Enable filetype and indent support

let g:AutoPairsFlyMode = 1
let g:prettier#autoformat = 1

au! BufWritePost $MYVIMRC call ResetAirline()      " auto source when writing to init.vm

function ResetAirline()
  let i = 0

  while i < 4
    execute "AirlineToggle"
    let i += 1
  endwhile

  execute "AirlineRefresh"
endfunction

" UltiSnips Customization
let g:UltiSnipsExpandTrigger="<C-Space>"
let g:UltiSnipsJumpForwardTrigger="<Tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-Tab>"

