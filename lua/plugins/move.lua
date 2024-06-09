return {
  "matze/vim-move",
  event = "VimEnter",
  keys = {
    { "<S-j>", "<plug>MoveBlockDown", desc = "Move block down", mode = "v" },
    { "<S-k>", "<plug>MoveBlockUp", desc = "Move block up", mode = "v" },
    { "<S-j>", "<plug>MoveLineDown", desc = "Move line down", mode = "n" },
    { "<S-k>", "<plug>MoveLineUp", desc = "Move line up", mode = "n" }
  }
}
