require("nvim-treesitter.configs").setup({
    enxure_installed = { 
        "c", 
        "cpp", 
        "lua", 
        "cmake", 
        "make", 
        "gitconfig",
        "gitignore",
    },
    sync_install = false,
    highlight = {
        enabled = true,
    }
})
