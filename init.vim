call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'terryma/vim-multiple-cursors'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'ncm2/ncm2'
Plug 'dense-analysis/ale'
Plug 'cohama/lexima.vim'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'VundleVim/Vundle.vim'

Plug 'maxmellon/vim-jsx-pretty'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'mattn/emmet-vim'
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install --frozen-lockfile --production',
  \ 'branch': 'release/0.x'
\ }
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'

Plug 'nvim-tree/nvim-tree.lua'
Plug 'nvim-tree/nvim-web-devicons' " Opcional, para ícones de arquivos
call plug#end()

colorscheme gruvbox
set background=dark
set hidden
set number
set relativenumber
set mouse=a
set inccommand=split

let mapleader="\<space>"
nnoremap <leader>; A;<esc>
nnoremap ; : 
nnoremap <leader>v :vsplit 
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <c-p> :Files<cr>
nnoremap <c-f> :Ag<space>

let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSnippetsDir = '~/.config/nvim/UltiSnips'
let g:coc_global_extensions = ['coc-tsserver', 'coc-json', 'coc-html', 'coc-css']
let g:user_emmet_settings = {
  \ 'jsx': {
  \   'extends': 'jsx',
  \ },
  \ }
" Mapeie a tecla <C-n> para abrir e fechar o explorador
nnoremap <C-e> :NvimTreeToggle<CR>

" Configurações adicionais
lua << EOF
require("nvim-tree").setup({
  -- Suas configurações personalizadas aqui
})
EOF

