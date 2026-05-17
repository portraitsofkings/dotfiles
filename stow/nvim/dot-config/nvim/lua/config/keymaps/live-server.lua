return {
  {
    lhs = "<leader>su",
    rhs = "<cmd>LiveServerStart<cr>",
    mode = "n",
    opts = { desc = "Live Server: Start" },
  },
  {
    lhs = "<leader>sd",
    rhs = "<cmd>LiveServerStop<cr>",
    mode = "n",
    opts = { desc = "Live Server: Stop" },
  },
  {
    lhs = "<leader>sD",
    rhs = "<cmd>LiveServerStopAll<cr>",
    mode = "n",
    opts = { desc = "Live Server: Stop All" },
  },
  {
    lhs = "<leader>so",
    rhs = "<cmd>LiveServerOpen<cr>",
    mode = "n",
    opts = { desc = "Live Server: Open" },
  },
  {
    lhs = "<leader>sr",
    rhs = "<cmd>LiveServerReload<cr>",
    mode = "n",
    opts = { desc = "Live Server: Reload" },
  },
  {
    lhs = "<leader>st",
    rhs = "<cmd>LiveServerToggleLive<cr>",
    mode = "n",
    opts = { desc = "Live Server: Toggle Live Updates" },
  },
  {
    lhs = "<leader>ss",
    rhs = "<cmd>LiveServerStatus<cr>",
    mode = "n",
    opts = { desc = "Live Server: Status" },
  },
}
