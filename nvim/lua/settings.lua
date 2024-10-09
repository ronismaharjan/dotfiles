-- General settings
vim.opt.number = true        -- Show line numbers
vim.opt.relativenumber = true -- Show relative line numbers
vim.opt.expandtab = true      -- Convert tabs to spaces
vim.opt.shiftwidth = 4        -- Number of spaces to use for autoindent
vim.opt.tabstop = 4           -- Number of spaces in a tab
vim.opt.smartindent = true    -- Smart indentation
vim.opt.hlsearch = true       -- Highlight search results
vim.opt.incsearch = true      -- Incremental search
vim.opt.ignorecase = true     -- Case insensitive searching
vim.opt.smartcase = true      -- Case sensitive if uppercase is present
vim.opt.wrap = false          -- Disable line wrapping
vim.opt.backup = false        -- Disable backup file creation
vim.opt.writebackup = false   -- Disable write backup file creation
vim.opt.swapfile = false      -- Disable swap file creation
vim.opt.mouse = "v"           -- Make mouse usable only in visual mode
vim.opt.wrap = true           -- Enable word to wrap
vim.opt.linebreak = true      --break word in word
vim.opt.clipboard = "unnamedplus" --set yank to system clipboard
vim.showmatch = true          --highlight same brackets
-- Set the statusline format
vim.opt.statusline = '%F %m %r %h %w %=%{&filetype} [%{getfsize(expand("%:p"))} bytes] %{strftime("%Y-%m-%d %H:%M:%S")}'
-- Enable the statusline
vim.opt.laststatus = 2        -- Always show the status line
