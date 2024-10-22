call plug#begin()
Plug 'projekt0n/github-nvim-theme'
Plug 'terryma/vim-multiple-cursors'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'ncm2/ncm2'
Plug 'dense-analysis/ale'
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

Plug 'nvim-lualine/lualine.nvim'
Plug 'lewis6991/gitsigns.nvim'
Plug 'tpope/vim-fugitive' 

Plug 'nvim-tree/nvim-web-devicons' " Recommended (for coloured icons)
" Plug 'ryanoasis/vim-devicons' Icons without colours
Plug 'akinsho/bufferline.nvim', { 'tag': '*' }
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
nnoremap <silent> <Tab> :BufferLineCycleNext<CR>
nnoremap <silent> <S-Tab> :BufferLineCyclePrev<CR>

" Use <Tab> para navegar pelas sugestões
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Confirma a seleção com <Enter>
inoremap <silent><expr> <CR> pumvisible() ? coc#_select_confirm() : "\<CR>"

" Abre o menu de autocompletar manualmente com <C-Space>
inoremap <silent><expr> <C-Space> coc#refresh()


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
set termguicolors
" Configurações adicionais
lua << EOF
require("nvim-tree").setup({
  -- Suas configurações Personalizadas aqui
})
require('gitsigns').setup()
require('lualine').setup()
require("bufferline").setup{
options = {
    mode = "buffers", -- Define que serão exibidos buffers
    numbers = "ordinal",
    diagnostics = "nvim_lsp",
    separator_style = "slant", -- Estilo do separador: "slant", "thick", "thin"
    offsets = {{
      filetype = "NvimTree",
      text = "File Explorer",
      text_align = "left",
      separator = true
    }},
    show_buffer_icons = true, -- Exibe ícones dos arquivos
    show_buffer_close_icons = false,
    show_close_icon = false,
    persist_buffer_sort = true, -- Mantém a ordem dos buffers
    always_show_bufferline = true,
  }
}
EOF

