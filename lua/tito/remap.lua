vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("c", "W", vim.cmd.write)
vim.keymap.set("n", "<C-h>", vim.cmd.bprev)
vim.keymap.set("n", "<C-l>", vim.cmd.bnext)
vim.keymap.set("n", "<leader>db", vim.cmd.bd)
vim.keymap.set("n", "<leader>l", function () vim.cmd.edit("#") end)


