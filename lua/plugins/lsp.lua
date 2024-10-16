return {
    "dundalek/lazy-lsp.nvim",
    dependencies = {
        "neovim/nvim-lspconfig",
        {"VonHeikemen/lsp-zero.nvim", branch = "v3.x"},
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/nvim-cmp",
    },
    config = function()
        local lsp_zero = require("lsp-zero")

        lsp_zero.on_attach(function(client, bufnr)
            -- see :help lsp-zero-keybindings to learn the available actions
            lsp_zero.default_keymaps({
                buffer = bufnr,
                preserve_mappings = false
            })
        end)

        require("lazy-lsp").setup {
            excluded_servers = {
                "ccls",
                "denols",
                "docker_compose_language_service",
                "flow",
                "ltex",
                "quick_lint_js",
                "scry",
                "tailwindcss",
                "biome",
            },
            preferred_servers = {
                markdown = {},
                python = { "basedpyright", "ruff_lsp" },
            }
        }
    end,
}
