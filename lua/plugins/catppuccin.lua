local M = {
    "catppuccin/nvim", 
    name = "catppuccin",
    priority = 1000,
    opts = function()
        return {
            integrations = {
                neotree = true,
                treesitter = true,
                ts_rainbow2 = true,
                notify = true,
                dashboard = true
            }
        }
    end,
    config = function(_, opts)
        local catpuccin = require("catppuccin")
        catpuccin.setup(opts)

        vim.cmd("colorscheme catppuccin-mocha")
    end
}

return M
