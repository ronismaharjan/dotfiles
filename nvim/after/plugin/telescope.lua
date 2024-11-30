require("telescope").setup({
  defaults = {
    -- Disable history for all pickers
    history = false,  -- Disables history for all Telescope commands
    file_ignore_patterns = {"node_modules/*"},  -- Optional: customize file ignoring
  },
})
