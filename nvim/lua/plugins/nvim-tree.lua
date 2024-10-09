return{
    "nvim-tree/nvim-tree.lua",
    dependencies = "nvim-tree/nvim-web-devicons",
    config = function()
        local nvimtree = require("nvim-tree")
        nvimtree.setup({
            view = {
                width = 35,
                relativenumber = true
            },
            git = {ignore = false}
        })
    end

}
