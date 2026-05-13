return {
  {
    lhs = "<leader>on",
    rhs = "<cmd>se number!<cr>",
    mode = "n",
    opts = {
      desc = "Toggle: Line Numbers",
    },
  },
  {
    lhs = "<leader>on",
    rhs = "<cmd>se relativenumber!<cr>",
    mode = "n",
    opts = {
      desc = "Toggle: Relative Line Numbers",
    },
  },
  {
    lhs = "<leader>ow",
    rhs = "<cmd>se wrap!<cr>",
    mode = "n",
    opts = {
      desc = "Toggle: Line Wrap",
    },
  },
  {
    lhs = "<leader>oc",
    rhs = "<cmd>se cursorline!<cr>",
    mode = "n",
    opts = {
      desc = "Toggle: Cursor Line",
    },
  },
  {
    lhs = "<leader>od",
    rhs = function()
      if vim.diagnostic.is_enabled() then
        vim.diagnostic.enable(true)
      else
        vim.diagnostic.enable(false)
      end
    end,
    mode = "n",
    opts = {
      desc = "Toggle: Diagnostics",
    },
  },
  {
    lhs = "<leader>oi",
    rhs = "<cmd>IBLToggle<cr>",
    mode = "n",
    opts = {
      desc = "Toggle: Indent Guides",
    },
  },
}
