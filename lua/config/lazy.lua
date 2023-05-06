local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"--single-branch",
		"https://github.com/folke/lazy.nvim.git",
		lazypath,
	})
end
vim.opt.runtimepath:prepend(lazypath)

-- load lazy
require("lazy").setup("plugins", {
  defaults = {
    lazy = true,
    version = "57cce98dfdb2f2dd05a0567d89811e6d0505e13b"
  },
	ui = {
		border = "rounded",
		wrap = "true"
	},
	change_detection = {
	  enabled = true
	},
	debug = false,
})
