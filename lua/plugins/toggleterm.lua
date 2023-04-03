local M = {
    "akinsho/toggleterm.nvim",
    event = "VeryLazy",
    keys = {
        {
            "<leader>tf",
            "<cmd>ToggleTerm direction=float<cr>",
            desc = "Open floating terminal",
        },
        {
            "<leader>th",
            "<cmd>ToggleTerm direction=horizontal<cr>",
            desc = "Open horizontal terminal",
        },
        {
            "<C-h>",
            "<cmd>wincmd h<cr>",
            mode = "t"
        },
        {
            "<C-j>",
            "<cmd>wincmd j<cr>",
            mode = "t"
        },
        {
            "<C-k>",
            "<cmd>wincmd k<cr>",
            mode = "t"
        },
        {
            "<C-l>",
            "<cmd>wincmd l<cr>",
            mode = "t"
        }
    },
    config = function()
        require("toggleterm").setup()
    end
}

return M
