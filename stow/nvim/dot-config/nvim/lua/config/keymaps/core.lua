return {
  {
    lhs = "-",
    rhs = "<cmd>Oil<cr>",
    mode = "n",
    opts = {
      desc = "Core: Explore",
    },
  },
  {
    lhs = "<leader>?",
    rhs = "<cmd>Telescope keymaps<cr>",
    mode = "n",
    opts = {
      desc = "Core: Browse Keymaps",
    },
  },
  {
    lhs = "<Esc>",
    rhs = function()
      if vim.v.hlsearch == 1 then
        vim.cmd("nohlsearch")
      end

      if vim.snippet.active() then
        vim.snippet.stop()
      end
    end,
    mode = "n",
    opts = {
      desc = "Core: Stop Search Highlighting and Snippets",
    },
  },
}
