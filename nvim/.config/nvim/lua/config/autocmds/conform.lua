-- Call conform to format files on save
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  callback = function(args)
    require("conform").format({ bufnr = args.buf })
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "*" },
  callback = function()
    vim.opt.colorcolumn = "0"
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "markdown" },
  callback = function()
    vim.opt.colorcolumn = "80"
    vim.api.nvim_set_hl(0, "ColorColumn", { bg = "#603333" })
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "python" },
  callback = function()
    vim.opt.colorcolumn = "90"
    vim.api.nvim_set_hl(0, "ColorColumn", { bg = "#603333" })
  end,
})
