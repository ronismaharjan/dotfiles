--Setting up leader key
vim.g.mapleader = " "

--Enable to move selected line up and down 
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

--Put cursor at the middle of screen while searching and moving
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

--Keymaps to toggne nvim tree
vim.api.nvim_set_keymap('n','<C-n>',':NvimTreeToggle<CR>',{noremap = true, silent = true})


--Keymaps for telescope
vim.api.nvim_set_keymap('n', '<leader>ff', '<cmd>lua require("telescope.builtin").find_files()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>fg', '<cmd>lua require("telescope.builtin").live_grep()<CR>', { noremap = true, silent = true })

--Keymaps for harpoon
vim.api.nvim_set_keymap('n', '<leader>a', '<cmd>lua require("harpoon.mark").add_file()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-e>', '<cmd>lua require("harpoon.ui").toggle_quick_menu()<CR>', { noremap = true, silent = true })

-- Key mappings for jumping to marked files in Harpoon
vim.api.nvim_set_keymap('n', '<leader>1', '<cmd>lua require("harpoon.ui").nav_file(1)<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>2', '<cmd>lua require("harpoon.ui").nav_file(2)<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>3', '<cmd>lua require("harpoon.ui").nav_file(3)<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>4', '<cmd>lua require("harpoon.ui").nav_file(4)<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>5', '<cmd>lua require("harpoon.ui").nav_file(5)<CR>', { noremap = true, silent = true })

-- Autocommand to delete Harpoon marks on exit
vim.api.nvim_create_autocmd("VimLeavePre", {
    callback = function()
        require('harpoon.mark').clear_all()
    end
})

-- Keymaps for undotree
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
