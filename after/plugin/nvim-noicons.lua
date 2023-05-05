local icons = require("nvim-nonicons")

require("telescope").setup({
  defaults = {
    prompt_prefix = "  " .. icons.get("telescope") .. "  ",
    selection_caret = " ❯ ",
    entry_prefix = "   ",
  },
})

local nonicons_extention = require("nvim-nonicons.extentions.nvim-tree")

require("nvim-tree").setup({
  renderer = {
    icons = {
      glyphs = nonicons_extention.glyphs,
    },
  },
})
