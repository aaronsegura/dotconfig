-- Run all @pytest.mark.unit tests
local neotest = require("neotest")
vim.keymap.set("n", "<leader>tau", function()
  neotest.run.run({ tree = vim.fn.getcwd(), env = { PYTEST_ADDOPTS = "-m unit" }, suite = true })
end, { desc = "Run unit tests" })

-- Run all @pytest.mark.integration tests
vim.keymap.set("n", "<leader>tai", function()
  neotest.run.run({ tree = vim.fn.getcwd(), env = { PYTEST_ADDOPTS = "-m integration" }, suite = true })
end, { desc = "Run integration tests" })
