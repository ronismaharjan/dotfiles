local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.loop).fs_stat(lazypath) then 
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup({
    
    --For rose-pine color scheme plugin
    {
         "rose-pine/neovim", 
         name = "rose-pine" 
    },

    --For nvim tree plugin
    {
        "nvim-tree/nvim-tree.lua",
        name = "nvim-tree",

    },

    --For telescope plugin
    {
        "nvim-telescope/telescope.nvim"
    },

    --For harpoon plugin
    {
        "theprimeagen/harpoon",
    },

    --For Treesitter plugin
    {
        "nvim-treesitter/nvim-treesitter",
    },

    --For Lua line plugin
    {
    'nvim-lualine/lualine.nvim',
    },

    --For undotree plugin
    {
        "mbbill/undotree"
    },

})


