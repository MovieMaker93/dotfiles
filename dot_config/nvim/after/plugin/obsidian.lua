local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, expr = true }
vim.keymap.set("n", "<leader>on", ":ObsidianNew<CR>")
