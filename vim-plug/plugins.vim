" auto-install vim-plug
if empty(glob('~/AppData/Local/nvim/autoload/plug.vim'))
	silent !curl -fLo $HOME/AppData/Local/nvim/autoload/plug.vim --create-dirs
	    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

	autocmd VimEnter * PlugInstall | source $MYVIMRC

endif

call plug#begin('~/AppData/Local/nvim/autoload/plugged')

	" Basic Plugins for Code
	Plug 'prettier/vim-prettier', { 'do': 'npm install' }
	Plug 'nelstrom/vim-visual-star-search'
	Plug 'jiangmiao/auto-pairs' " Auto Pairing for Brackets, etc
	Plug 'preservim/nerdcommenter' " Commenter
	Plug 'terryma/vim-multiple-cursors'

	" Git Integration
	Plug 'tpope/vim-fugitive'

	" Start Screen
	Plug 'mhinz/vim-startify'

	" Syntax Highlighting
	Plug 'sheerun/vim-polyglot'
	Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}

	" File Tree (ChadTree) & Undo Tree
	Plug 'ms-jpq/chadtree', { 'branch': 'chad', 'do': 'python3 -m chadtree deps' }
	Plug 'mbbill/undotree'

	" Themes
	Plug 'NieTiger/halcyon-neovim'

	" Async Linter (ALE)
	Plug 'dense-analysis/ale'

	" Coc and other Code Buddies
	Plug 'neoclide/coc.nvim', { 'branch': 'release' }
	Plug 'honza/vim-snippets' " Snippets
	Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' } " Additional GoLang Support

	" Web
	Plug 'mattn/emmet-vim'
	Plug 'digitaltoad/vim-pug'

	" Airline Status Bar
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'

call plug#end()
