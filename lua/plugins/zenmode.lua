local M = {
    "folke/zen-mode.nvim",
    event = "VeryLazy",
    keys = {
        { "<leader>z", "<cmd>ZenMode<cr>", desc = "Toggle zenmode" }
    },
    opts = function() 
        return {
            window = {
                width = .85,
            }
        }
    end,
    config = function(_, opts)
        require("zen-mode").setup(opts)
    end
}

return M
