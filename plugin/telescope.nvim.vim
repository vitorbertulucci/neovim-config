nnoremap <C-p> <cmd>Telescope find_files<cr>
nnoremap <C-m> <cmd>Telescope marks<cr>
nnoremap <C-f> <cmd>Telescope live_grep<cr>
nnoremap <C-b> <cmd>Telescope buffers<cr>
nnoremap <leader>gs <cmd>Telescope git_status<cr>

lua << EOF
require('telescope').setup{
  defaults = {
    file_ignore_patters = {
      "node_modules"
    }
  }
}
EOF
