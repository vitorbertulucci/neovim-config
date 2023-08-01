local bufferline = require("bufferline")

vim.opt.termguicolors = true
vim.keymap.set("n", "<leader>gb", vim.cmd.BufferLinePick)
vim.keymap.set("n", "<leader>1", function () bufferline.go_to(1, true) end)
vim.keymap.set("n", "<leader>2", function () bufferline.go_to(2, true) end)
vim.keymap.set("n", "<leader>3", function () bufferline.go_to(3, true) end)
vim.keymap.set("n", "<leader>4", function () bufferline.go_to(4, true) end)
vim.keymap.set("n", "<leader>5", function () bufferline.go_to(5, true) end)
vim.keymap.set("n", "<leader>6", function () bufferline.go_to(6, true) end)
vim.keymap.set("n", "<leader>7", function () bufferline.go_to(7, true) end)
vim.keymap.set("n", "<leader>8", function () bufferline.go_to(8, true) end)
vim.keymap.set("n", "<leader>9", function () bufferline.go_to(9, true) end)

bufferline.setup{
  options = {
    diagnostics = 'nvim_lsp',
    diagnostics_indicator = function(count, level, diagnostics_dict, context)
      local s = " "
      for e, n in pairs(diagnostics_dict) do
        local sym = e == "error" and " "
          or (e == "warning" and " " or "" )
        s = s .. n .. sym
      end
      return s
    end,
    numbers = function(opts)
      return string.format('%s)', opts.ordinal)
    end,
    offsets = {
        {
            filetype = "NvimTree",
            text = "File Explorer",
            highlight = "Directory",
            separator = true -- use a "true" to enable the default, or set your own character
        }
    }
  }
}
