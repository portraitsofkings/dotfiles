return {
  {
    lhs = "<leader>ln",
    rhs = vim.lsp.buf.rename,
    mode = "n",
    opts = {
      desc = "LSP: Rename",
    },
  },
  {
    lhs = "<leader>la",
    rhs = vim.lsp.buf.code_action,
    mode = "n",
    opts = {
      desc = "LSP: Code Action",
    },
  },
  {
    lhs = "<leader>lr",
    rhs = vim.lsp.buf.references,
    mode = "n",
    opts = {
      desc = "LSP: References",
    },
  },
  {
    lhs = "<leader>li",
    rhs = vim.lsp.buf.implementation,
    mode = "n",
    opts = {
      desc = "LSP: Implementation",
    },
  },
  {
    lhs = "<leader>lt",
    rhs = vim.lsp.buf.type_definition,
    mode = "n",
    opts = {
      desc = "LSP: Type Definition",
    },
  },
}
