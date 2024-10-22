call plug#begin()
Plug 'projekt0n/github-nvim-theme'
Plug 'terryma/vim-multiple-cursors'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'ncm2/ncm2'
Plug 'dense-analysis/ale'
Plug 'cohama/lexima.vim'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
call plug#end()

colorscheme github_dark
set hidden
set number
set relativenumber
set mouse=a
set inccommand=split
let g:python3_host_prog = 'C:\Users\lucas\AppData\Local\Programs\Python\Python313\python'
let mapleader="\<space>"
nnoremap <leader>; A;<esc>
nnoremap ; : 
nnoremap <leader>v :vsplit 
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <c-p> :Files<cr>
nnoremap <c-f> :Ag<space>

let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSnippetsDir = '~/.config/nvim/UltiSnips'
