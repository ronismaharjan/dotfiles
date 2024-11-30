require("nvim-treesitter.configs").setup({
    ensure_installed = {"c","javascript", "lua","html","css","typescript"},
    auto_install = true,
    highlight = {
        enable = true,
    },
})
