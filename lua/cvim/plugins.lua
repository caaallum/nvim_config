local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
		vim.cmd([[packadd packer.nvim]])
		return true
	end
	return false
end

local packer_bootstrap = ensure_packer()

return require("packer").startup(function(use)
	use("wbthomason/packer.nvim")
	use({
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v2.x",
		requires = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
		},
	})
	use("akinsho/toggleterm.nvim")
	use("mrjones2014/smart-splits.nvim")
	use({ "catppuccin/nvim", as = "catppuccin" })
	use("numToStr/Comment.nvim")
	use("max397574/better-escape.nvim")
	use({
		"nvim-treesitter/nvim-treesitter",
		run = function()
			local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
			ts_update()
		end,
	})
	use("HiPhish/nvim-ts-rainbow2")
	use({
		"akinsho/bufferline.nvim",
		requires = {
			"nvim-tree/nvim-web-devicons",
			"famiu/bufdelete.nvim",
		},
	})
	use({
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
	})
	use({
		"nvim-telescope/telescope.nvim",
		requires = { "nvim-lua/plenary.nvim" },
	})
	use("famiu/bufdelete.nvim")
	use("s1n7ax/nvim-window-picker")
	use("mhartington/formatter.nvim")
	use("nvim-lualine/lualine.nvim")
	use("rcarriga/nvim-notify")
	use("Shatur/neovim-session-manager")
	use("karb94/neoscroll.nvim")
	use("lukas-reineke/indent-blankline.nvim")
	use("windwp/nvim-autopairs")
	use({
		"neovim/nvim-lspconfig",
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-path",
		"hrsh7th/cmp-cmdline",
		"hrsh7th/nvim-cmp",
		"L3MON4D3/LuaSnip",
		"saadparwaiz1/cmp_luasnip",
		"onsails/lspkind.nvim",
	})
	use("gen740/SmoothCursor.nvim")
	use("alec-gibson/nvim-tetris")
	if packer_bootstrap then
		require("packer").sync()
	end
end)
