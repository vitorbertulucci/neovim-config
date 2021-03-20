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

Plug 'gruvbox-community/gruvbox'
" Plug 'kien/ctrlp.vim'
Plug 'preservim/nerdcommenter'

" Git
Plug 'tpope/vim-fugitive'

Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'
Plug 'terryma/vim-multiple-cursors'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Plug 'JamshedVesuna/vim-markdown-preview'
Plug 'tpope/vim-surround'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'preservim/nerdtree'

" Telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" Plug 'eslint/eslint'
call plug#end()

colorscheme gruvbox

" NERDTree settings
map <leader>v :NERDTreeFind<CR>

" Ctrl P force settings
" let g:ctrlp_map = '<c-p>'
" let g:ctrlp_cmd = 'CtrlP'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,node_modules,*.lock

" CoC Configs
" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

nmap <leader>rr <Plug>(coc-rename)
nnoremap <leader>pf :CocSearch <C-R>=expand("<cword>")<CR><CR>

nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gr <Plug>(coc-references)

vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

filetype plugin on

" Telescope
nnoremap <C-p> <cmd>Telescope find_files<cr>
" Vim Markdown Config
" let vim_markdown_preview_hotkey='<C-1>'
" let vim_markdown_preview_github=1
" let vim_markdown_preview_toggle=2
" let vim_markdown_preview_browser='Chromium'

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 2
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
nnoremap <C-t> <cmd>NERDTreeToggle<cr>
