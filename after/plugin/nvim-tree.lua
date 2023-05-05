-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.keymap.set("n", "<leader>pv", vim.cmd.NvimTreeToggle)

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- empty setup using defaults
-- require("nvim-tree").setup()
-- 
-- -- OR setup with some options
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  renderer = {
    group_empty = true,
  },
  update_focused_file = {
    enable = true,
    update_root = false,
  },
  filters = {
    dotfiles = true,
  },
})
-- 
-- vim.keymap.set("n", "<leader>pv", vim.cmd.NvimTreeToggle)
