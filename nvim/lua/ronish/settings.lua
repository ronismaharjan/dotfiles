-- General settings
vim.opt.number = true        -- Show line numbers
vim.opt.relativenumber = true -- Show relative line numbers

vim.opt.expandtab = true      -- Convert tabs to spaces
vim.opt.shiftwidth = 4        -- Number of spaces to use for autoindent
vim.opt.tabstop = 4           -- Number of spaces in a tab
vim.opt.smartindent = true    -- Smart indentation

vim.opt.hlsearch = false       -- Highlight search results
vim.opt.incsearch = true      -- Incremental search
vim.opt.ignorecase = true     -- Case insensitive searching
vim.opt.smartcase = true      -- Case sensitive if uppercase is present
vim.opt.showmatch = true          --highlight same brackets

vim.opt.wrap = false          -- Disable line wrapping

vim.opt.backup = false        -- Disable backup file creation
vim.opt.writebackup = false   -- Disable write backup file creation
vim.opt.swapfile = false      -- Disable swap file creation

vim.opt.mouse = "v"           -- Make mouse usable only in visual mode
vim.opt.clipboard = "unnamedplus" --set yank to system clipboard
vim.opt.scrolloff = 8         --keep 8 lines visible while scrolling 
vim.opt.splitbelow = true     --split windows to bottom instead of top

vim.opt.termguicolors = true
vim.opt.laststatus = 2        -- Always show the status line

vim.opt.colorcolumn = "80"    --specific color will be in 80 column 
vim.opt.updatetime = 50       --fast performance in searching and lsp

-- Set the statusline format
--vim.opt.statusline = '%F %m %r %h %w %=%{&filetype} [%{getfsize(expand("%:p"))} bytes] %{strftime("%Y-%m-%d %H:%M:%S")}'
-- Set colors for the statusline

#Highlight when yank 
vim.api.nvim_create_autocmd("TextYankPost", {
    callback = function()
        vim.highlight.on_yank({ higroup = 'IncSearch',timeout = 100 })
    end
})
