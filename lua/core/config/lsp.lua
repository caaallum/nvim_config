local servers = { "lua_ls", "clangd", "cmake", "intelephense" }

require("mason").setup()

require("mason-lspconfig").setup({
  ensure_installed = servers,
  automatic_installation = true
})

local on_attach = function(_, _)
  vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
  vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})

  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
  vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references, {})
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
end

local capabilities = require("cmp_nvim_lsp").default_capabilities()

for i, server in ipairs(servers) do
  --require("lspconfig")[server].setup {
   -- on_attach = on_attach,
    --capabilities = capabilities
  --}
end
