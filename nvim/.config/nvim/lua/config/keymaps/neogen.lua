local opts = { noremap = true, silent = true, desc = "Generate AutoDoc" }
vim.api.nvim_set_keymap("n", "<Leader>D", ":lua require('neogen').generate()<CR>", opts)
