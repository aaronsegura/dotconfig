-- Move buffers
vim.keymap.set("n", "<M-h>", ":BufferLineMovePrev<cr>", { desc = "Move buffer to the left." })
vim.keymap.set("n", "<M-l>", ":BufferLineMoveNext<cr>", { desc = "Move buffer to the right." })

vim.keymap.set("n", "<leader>bq", ":bp<bar>vsp<bar>bn<bar>bd<CR>", { desc = "Quit this buffer." })
