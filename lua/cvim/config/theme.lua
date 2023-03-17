require("catppuccin").setup({
    integrations = {
        neotree = true,
        treesitter = true,
        ts_rainbow2 = true,
        notify = true,
        dashboard = true
    }
})

vim.cmd("colorscheme catppuccin-mocha")
