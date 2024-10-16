return {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
        "famiu/bufdelete.nvim",
    },
    opts = {
        options = {
            close_command = "Bdelete! %d",
            right_mouse_command = "Bdelete! %d",
            offsets = {
                {
                    filetype = "neo-tree",
                    text = "Neo-tree",
                    highlight = "Directory",
                    text_align = "left"
                }
            },
            always_show_bufferline = true,
            diagnostics = "nvim_lsp"
        }
    },
    keys = {
        { "<S-l>", "<cmd>BufferLineCycleNext<cr>", desc = "Move to next buffer", mode = "n" },
        { "<S-h>", "<cmd>BufferLineCyclePrev<cr>", desc = "Move to previous buffer", mode = "n" },
        { "<leader>c", function() require("bufdelete").bufdelete(0, false) end, desc = "Close buffer", mode = "n" }
    }
}
