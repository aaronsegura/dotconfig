return {
  require("conform").setup({
    format_on_save = function(bufnr)
      local ignore_filetypes = { "yaml" }
      if vim.tbl_contains(ignore_filetypes, vim.bo[bufnr].filetype) then
        return
      end
      return { timeout_ms = 700, quiet = true, lsp_fallback = false }
    end,
    formatters_by_ft = {
      lua = { "stylua" },
      -- Conform will run multiple formatters sequentially
      python = { "ruff_format", "ruff_organize_imports" },
      yaml = {},
    },
  }),
}
