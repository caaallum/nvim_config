return {
    "akinsho/toggleterm.nvim",
    version = "*",
    opts = {
        size = 20,
        open_mapping = [[<c-\>]],
        hide_numbers = true,
        shade_terminals = true,
        shading_factory = 2,
        start_in_insert = true,
        insert_mappings = true,
        persist_size = true,
        close_on_exit = true,
        shell = vim.o.shell,
        float_opts = {
            border = "curved",
        },
    },
    keys = {
        { "<leader>tf", "<cmd>ToggleTerm direction=float<cr>", desc = "Open floating terminal", mode = "n" },
        { "<leader>th", "<cmd>ToggleTerm direction=horizontal<cr>", desc = "Option horizontal terminal", mode = "n" },
        { "<C-h>", "<cmd>wincmd h<cr>", mode = "t" },
        { "<C-j>", "<cmd>wincmd j<cr>", mode = "t" },
        { "<C-k>", "<cmd>wincmd k<cr>", mode = "t" },
        { "<C-l>", "<cmd>wincmd l<cr>", mode = "t" }
    }
}
