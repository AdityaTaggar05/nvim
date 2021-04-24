" Clear Search
:command! C let @/=""

" Open Help
inoremap <silent> <M-d> <Esc>:execute "vert h ". expand("<cword>"):vertical resize -20<CR>0
nnoremap <silent> <M-d> :execute "vert h ". expand("<cword>"):vertical resize -20<CR>0

" Better nav for omnicomplete
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")
inoremap <expr> <s-tab> ("\<C-p>")

" Use alt + hjkl to resize windows
nnoremap <silent> <M-j>    :resize -2<CR>
nnoremap <silent> <M-k>    :resize +2<CR>
nnoremap <silent> <M-h>    :vertical resize -2<CR>
nnoremap <silent> <M-l>    :vertical resize +2<CR>

" Change Esc to ii for Insert Mode
inoremap ii <Esc>

" Easy Case Switching
inoremap <C-u> <ESC>lviwUi
nnoremap <C-u> viwU<Esc>

inoremap <M-u> <Esc>lviwui
nnoremap <M-u> viwu<Esc>

inoremap <silent><C-s> <ESC>lviw~i
nnoremap <C-s> viw~<Esc>

" Tab to go to next buffer and Shift-Tab to go to previous
nnoremap <silent> <TAB> :bnext<CR>
nnoremap <silent> <S-TAB> :bprevious<CR>
nnoremap <silent> <C-d> :bdelete<CR>
nnoremap <silent> <C-D> :bdelete!<CR>

" <TAB>: completion.
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><S-Tab>pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <silent><leader>v :vsp<CR>
nnoremap <silent><leader>s :sp<CR>

nnoremap <leader>o o<Esc>^Da
nnoremap <leader>O O<Esc>^Da"

" Replace Command Mappings
nnoremap <leader>r :%s///g<Left><Left><Left>
nnoremap <leader>ri :%s///gi<Left><Left><Left><Left>
nnoremap <leader>rc :%s///gc<Left><Left><Left><Left>
nnoremap <leader>rci :%s///gci<Left><Left><Left><Left><Left>
nnoremap <leader>rv :%s/\%V//g<Left><Left><Left>

" Buffer Navigation Mappings
nnoremap bn :e
nnoremap <silent>bh :bfirst<CR>
nnoremap <silent>bl :blast<CR>

" File Tree Mappings
nnoremap <leader>e :CHADopen<CR>
nnoremap <leader>te :CHADopen --version-ctl<CR>

" Undo Tree Mappings
nnoremap <silent> <leader>u :UndotreeToggle<CR>
nnoremap <silent> <leader>fu :UndotreeFocus<CR>

" Startify Session Mappings
nmap <leader>ss :SSave<CR>
nmap <leader>ls :SLoad<CR>

" Replace Command New
nnoremap <leader>r :call Replace()<CR>

function Replace()
  call feedkeys(":%s/" . expand("<cword>") . "//g", "n")
  execute "norm hhh"
endfunction
