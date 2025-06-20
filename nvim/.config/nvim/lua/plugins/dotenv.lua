return {
  "petermnhull/nvim-dotenv",
  config = function()
    require("nvim-dotenv").setup({})

    vim.keymap.set("n", "<leader>te", "<Cmd>SetEnv<CR>", { desc = "[s]et env from test.env file" })
  end,
}
