local M = {
    "neovim/nvim-lspconfig",
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        {
            "j-hui/fidget.nvim",
            config = function()
                require("fidget").setup()
            end
        },
        { "m-pilia/vim-ccls" },
        { "folke/neodev.nvim" },
        { "jose-elias-alvarez/null-ls.nvim" },
        { "jay-babu/mason-null-ls.nvim" },
        { "jay-babu/mason-nvim-dap.nvim" }
    },
    config = function()
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
	ensure_installed = require("utils").mason_packages,
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

for i, server in ipairs(require("utils").mason_packages) do
	require("lspconfig")[server].setup({
		on_attach = on_attach,
		capabilities = capabilities,
	})
end
    end
}

return M
