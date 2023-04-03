local M = {
    "SmiteshP/nvim-navbuddy",
    dependencies = {
        "neovim/nvim-lspconfig",
        "SmiteshP/nvim-navic",
        "MunifTanjim/nui.nvim"
    },
    keys = {
        {
            "<leader>n",
            "<cmd>Navbuddy<cr>",
            desc = "Open navbudy window"
        }
    }
}

return M
