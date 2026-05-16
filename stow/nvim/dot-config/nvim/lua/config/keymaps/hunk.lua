return {
  {
    lhs = "<leader>hs",
    rhs = "<cmd>Gitsigns stage_hunk<cr>",
    mode = { "n", "v" },
    opts = {
      desc = "Hunk: Stage/Unstage",
    },
  },
  {
    lhs = "<leader>hr",
    rhs = "<cmd>Gitsigns reset_hunk<cr>",
    mode = { "n", "v" },
    opts = {
      desc = "Hunk: Reset",
    },
  },
  {
    lhs = "<leader>hi",
    rhs = "<cmd>Gitsigns preview_hunk_inline<cr>",
    mode = { "n", "v" },
    opts = {
      desc = "Hunk: Preview Inline",
    },
  },
  {
    lhs = "<leader>hh",
    rhs = "<cmd>Gitsigns preview_hunk<cr>",
    mode = "n",
    opts = {
      desc = "Hunk: Preview",
    },
  },
  {
    lhs = "<leader>hp",
    rhs = "<cmd>Gitsigns prev_hunk<cr>",
    mode = "n",
    opts = {
      desc = "Hunk: Previous",
    },
  },
  {
    lhs = "<leader>hn",
    rhs = "<cmd>Gitsigns next_hunk<cr>",
    mode = "n",
    opts = {
      desc = "Hunk: Next",
    },
  },
  {
    lhs = "<leader>hq",
    rhs = "<cmd>Gitsigns setqflist<cr>",
    mode = "n",
    opts = {
      desc = "Hunk: Set Quickfix List",
    },
  },
}
