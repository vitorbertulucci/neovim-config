vim.g.mapleader = " "
-- vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("c", "W", vim.cmd.write)
vim.keymap.set("n", "<C-h>", vim.cmd.bprev)
vim.keymap.set("n", "<C-l>", vim.cmd.bnext)
vim.keymap.set("n", "<leader>db", vim.cmd.bd)

-- go to previous opened file current in # register
vim.keymap.set("n", "<leader>l", function () vim.cmd.edit("#") end)

-- move selected lines up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '>-2<CR>gv=gv")

-- when paste on a highlighted line, keep the copied value and throw the selected text to void buffer
vim.keymap.set("x", "<leader>p", "\"_dp")

-- select current word and change in file every match based on the text entered
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

