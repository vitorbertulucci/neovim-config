local lsp = require("lsp-zero")
  -- Packer can manage itself

lsp.preset("recommended")

lsp.ensure_installed({
  'tsserver',
  'eslint',
  'sumneko_lua',
  'rust_analyzer',
})

lsp.nvim_workspace()
lsp.setup()

