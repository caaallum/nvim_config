local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath("data").."/site/pack/packer/start/packer.nvim"
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({"git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require("packer").startup(function(use)
  use "wbthomason/packer.nvim"
  use { 
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v2.x",
    requires = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    }
  }
  use "akinsho/toggleterm.nvim"
  use "mrjones2014/smart-splits.nvim"
  use { "catppuccin/nvim", as = "catppuccin" }
  use "numToStr/Comment.nvim"
  use "max397574/better-escape.nvim"
  use {
    "nvim-treesitter/nvim-treesitter",
    run = function()
      local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
      ts_update()
    end,
  }
  use "HiPhish/nvim-ts-rainbow2"
  use {
    "akinsho/bufferline.nvim",
    requires = {
        "nvim-tree/nvim-web-devicons",
        "famiu/bufdelete.nvim"
      }
  }
  use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
  }
  use {
    "nvim-telescope/telescope.nvim",
    requires = { "nvim-lua/plenary.nvim" }
  }
  use {
    "hrsh7th/nvim-cmp",
    requires = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-path",
      "L3MON4D3/LuaSnip"
    },
  }
  use "famiu/bufdelete.nvim"
  use "s1n7ax/nvim-window-picker"
  use "mhartington/formatter.nvim"
  use "nvim-lualine/lualine.nvim"
  use "rcarriga/nvim-notify"
  use "Shatur/neovim-session-manager"
  if packer_bootstrap then
    require("packer").sync()
  end
end)
