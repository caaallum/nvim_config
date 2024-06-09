return {
    "numToStr/Comment.nvim",
    keys = {
        { "<leader>/", function() require("Comment.api").toggle.linewise.current() end, desc = "Comment line", mode = "n" },
        { "<leader>/", function() require("Comment.api").toggle.linewise(vim.fn.visualmode(h)) end, desc = "Comment block", mode = "x" }
    }
}
