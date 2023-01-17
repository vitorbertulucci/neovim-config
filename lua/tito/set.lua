-- vim.opt.syntax = on

vim.opt.tabstop=2
vim.opt.softtabstop=2
vim.opt.shiftwidth=2
vim.opt.smartindent = true
vim.opt.expandtab = true
vim.opt.wrap = true
vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.hlsearch = false
vim.opt.hidden = true
-- vim.opt.noerrorbells = true
vim.opt.linebreak = true
vim.opt.smartcase = true
vim.opt.ignorecase = true
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir= os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true
vim.opt.incsearch = true
vim.opt.updatetime=300
vim.opt.scrolloff=8
vim.opt.background= "dark"
vim.opt.termguicolors = true

vim.opt.signcolumn = "yes"
vim.opt.colorcolumn= "80"

-- nnoremap <C-h> <cmd>bprev<cr>
-- nnoremap <C-l> <cmd>bnext<cr>
-- nnoremap <leader>ç <cmd>e #<cr>
-- nnoremap <leader>d <cmd>bd<cr>
-- " NERDTree settings
-- map <leader>v :NERDTreeFind<CR>
-- 
-- set path+=.,**
-- set wildignore+=*/tmp/*,*.so,*.swp,*.zip,node_modules,*.lock
-- 
-- inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
-- inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
-- 
-- vnoremap J :m '>+1<CR>gv=gv
-- vnoremap K :m '<-2<CR>gv=gv
-- 
-- filetype plugin on
-- 
-- " Telescope
-- nnoremap <C-p> <cmd>Telescope find_files<cr>
-- 
-- " Add spaces after comment delimiters by default
-- let g:NERDSpaceDelims = 2
-- " Align line-wise comment delimiters flush left instead of following code indentation
-- let g:NERDDefaultAlign = 'left'
-- nnoremap <C-t> <cmd>NERDTreeToggle %<cr>
-- 
-- " nvim-compe settings
-- luafile ~/.config/nvim/plugin/nvim-compe.lua
-- luafile ~/.config/nvim/plugin/tree-sitter.lua
-- 
-- " built-in term
-- tnoremap <Esc> <C-\><C-n>
-- 
-- " Vim-vue config
-- " let g:vue_pre_processors = ['pug', 'scss']
-- " Navigation
-- noremap <C-w>m :MaximizerToggle<CR>
