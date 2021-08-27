syntax on

let mapleader = " "
set noerrorbells
set tabstop=2 softtabstop=2
set shiftwidth=2
set smartindent
set expandtab
set wrap
set nu
set relativenumber
set nohlsearch
set hidden
set noerrorbells
" set nowrap
set linebreak
set smartcase
set ignorecase
set noswapfile
set nowritebackup
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set updatetime=300
set scrolloff=8
set background=dark

command W w

set signcolumn=yes
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug#begin('~/.vim/plugged')

Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'
Plug 'nvim-lua/completion-nvim'
" Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update

" Colorschemes
Plug 'gruvbox-community/gruvbox'
" Plug 'arzg/vim-colors-xcode'
" Plug 'arcticicestudio/nord-vim'
" Plug 'jacoborus/tender.vim'

Plug 'ntpeters/vim-better-whitespace'
Plug 'preservim/nerdcommenter'

" Git
Plug 'tpope/vim-fugitive'

Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'
" Plug 'terryma/vim-multiple-cursors'

" Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'JamshedVesuna/vim-markdown-preview'
Plug 'tpope/vim-surround'
" Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'preservim/nerdtree'

" Telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" Markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

" Vue highlight
" Plug 'posva/vim-vue'
" Plug 'leafOfTree/vim-vue-plugin'
call plug#end()

" lsp config
lua require('lspconfig').tsserver.setup{ on_attach=require'completion'.on_attach }
set completeopt=menuone,noinsert,noselect
let g:completion_matching_strategy_list = [ 'exact', 'substring', 'fuzzy' ]
set shortmess+=c
autocmd BufEnter * lua require'completion'.on_attach()

colorscheme gruvbox
" colorscheme xcodedark
" colorscheme nord
" colorscheme tender

noremap ; :
nnoremap <C-h> <cmd>bprev<cr>
nnoremap <C-l> <cmd>bnext<cr>
nnoremap <leader>ç <cmd>e #<cr>
nnoremap <leader>d <cmd>bd<cr>
" NERDTree settings
map <leader>v :NERDTreeFind<CR>

set path+=.,**
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,node_modules,*.lock

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

filetype plugin on

" Telescope
nnoremap <C-p> <cmd>Telescope find_files<cr>

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 2
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
nnoremap <C-t> <cmd>NERDTreeToggle<cr>

" nvim-compe settings
luafile ~/.config/nvim/plugin/nvim-compe.lua

" built-in term
tnoremap <Esc> <C-\><C-n>

" Vim-vue config
" let g:vue_pre_processors = ['pug', 'scss']
