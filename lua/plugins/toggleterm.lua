local M = {
  "akinsho/toggleterm.nvim",
  commit = "c8574d7a7d2e5682de4479463ddba794390c0e40",
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
