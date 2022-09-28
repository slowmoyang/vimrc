" https://github.com/junegunn/vim-plug
call plug#begin()
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" coc
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'tjdevries/coc-zsh'

" syntax
Plug 'lervag/vimtex'
Plug 'vim-python/python-syntax'
Plug 'mechatroner/rainbow_csv'
Plug 'Gullumluvl/vim-Condor'
Plug 'slowmoyang/vim-NanoAOD_Analyzer'

" snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" hi
Plug 'tpope/vim-markdown'
Plug 'MTDL9/vim-log-highlighting', { 'tag': 'v1.0.0' }

" colorscheme
Plug 'slowmoyang/bat.vim'

" misc
Plug 'preservim/nerdtree', { 'tag': '6.10.16' }
Plug 'junegunn/goyo.vim'
Plug 'preservim/nerdcommenter'
Plug 'terryma/vim-multiple-cursors'
Plug 'terryma/vim-smooth-scroll'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'


" Initialize plugin system
" - Automatically executes `filetype plugin indent on` and `syntax enable`.
call plug#end()
