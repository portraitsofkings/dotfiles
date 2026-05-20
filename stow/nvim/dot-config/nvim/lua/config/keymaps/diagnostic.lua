return {
  {
    lhs = "<leader>dd",
    rhs = vim.diagnostic.open_float,
    mode = "n",
    opts = {
      desc = "Diagnostic: Open Float",
    },
  },
  {
    lhs = "<leader>dt",
    rhs = function()
      vim.diagnostic.enable(not vim.diagnostic.is_enabled())
    end,
    mode = "n",
    opts = { desc = "Diagnostic: Toggle" },
  },
  {
    lhs = "<leader>dp",
    rhs = function()
      vim.diagnostic.jump({ count = -1 })
    end,
    mode = "n",
    opts = { desc = "Diagnostic: Previous" },
  },
  {
    lhs = "<leader>dn",
    rhs = function()
      vim.diagnostic.jump({ count = 1 })
    end,
    mode = "n",
    opts = { desc = "Diagnostic: Next" },
  },
  {
    lhs = "<leader>dP",
    rhs = function()
      vim.diagnostic.jump({ count = -math.huge, wrap = false })
    end,
    mode = "n",
    opts = { desc = "Diagnostic: First" },
  },
  {
    lhs = "<leader>dN",
    rhs = function()
      vim.diagnostic.jump({ count = math.huge, wrap = false })
    end,
    mode = "n",
    opts = { desc = "Diagnostic: Last" },
  },
  {
    lhs = "<leader>dq",
    rhs = vim.diagnostic.setqflist,
    mode = "n",
    opts = { desc = "Diagnostic: Set Quickfix List" },
  },
  {
    lhs = "<leader>dl",
    rhs = vim.diagnostic.setloclist,
    mode = "n",
    opts = { desc = "Diagnostic: Set Location List" },
  },
}
