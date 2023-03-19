local servers = { "lua_ls", "clangd", "cmake", "intelephense" }

require("mason").setup()

require("mason-null-ls").setup({
    ensure_installed = { "cpptools", "php-debug-adapter" },
    automatic_setup = true,
    automatic_installation = true
})

require("mason-nvim-dap").setup({
    ensure_installed = { "php", "cppdbg" },
    automatic_setup = true
})

require("mason-nvim-dap").setup_handlers {
    function(source_name)
        require("mason-nvim-dap.automatic_setup")(source_name)
    end,
}

require("mason-lspconfig").setup({
	ensure_installed = servers,
	automatic_installation = true,
})

local on_attach = function(_, _)
	vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {})
	vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})

	vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
	vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {})
	vim.keymap.set("n", "gr", require("telescope.builtin").lsp_references, {})
	vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
end

local capabilities = require("cmp_nvim_lsp").default_capabilities()

for i, server in ipairs(servers) do
	require("lspconfig")[server].setup({
		on_attach = on_attach,
		capabilities = capabilities,
	})
end
