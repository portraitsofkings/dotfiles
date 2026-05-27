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
  {
    lhs = "<leader>m",
    rhs = function()
      require("treesj").toggle()
    end,
    mode = "n",
    opts = {
      desc = "Core: Toggle Code Block Split/Join",
    },
  },
  {
    lhs = "<leader>?",
    rhs = function()
      require("which-key").show()
    end,
    mode = "n",
    opts = {
      desc = "Core: Show Global Keymaps",
    },
  },
}
