return {
    "nvim-treesitter/nvim-treesitter",
    version = false,
    build = ":TSUpdate",
    event = { "VeryLazy" },
    config = function()
        local configs = require("nvim-treesitter.configs")

        configs.setup({
            ensure_installed = { 
                "c", 
                "lua",
                "vim",
                "vimdoc", 
                "query",
                "elixir",
                "heex", 
                "javascript",
                "html",
                "php",
            },
            sync_install = false,
            highlight = { enable = true },
            indent = { enable = true },
        })
    end
}
