local M = {
    "akinsho/toggleterm.nvim",
    keys = {
        {
            "<leader>tf",
            "<cmd>ToggleTerm direction=float<cr>",
            desc = "Open floating terminal",
            mode = "n"
        },
        {
            "<leader>th",
            "<cmd>ToggleTerm direction=horizontal<cr>",
            dec = "Open horizontal terminal",
            mode = "n"
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
    config = true
}

return M
