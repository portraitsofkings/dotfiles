return {
  {
    lhs = "<leader>ff",
    rhs = "<cmd>Telescope find_files<cr>",
    mode = "n",
    opts = {
      desc = "Telescope: Files",
    },
  },
  {
    lhs = "<leader>fg",
    rhs = "<cmd>Telescope live_grep<cr>",
    mode = "n",
    opts = {
      desc = "Telescope: Grep",
    },
  },
  {
    lhs = "<leader>fh",
    rhs = "<cmd>Telescope help_tags<cr>",
    mode = "n",
    opts = {
      desc = "Telescope: Help",
    },
  },
  {
    lhs = "<leader>fb",
    rhs = "<cmd>Telescope buffers<cr>",
    mode = "n",
    opts = {
      desc = "Telescope: Buffers",
    },
  },
  {
    lhs = "<leader>fk",
    rhs = "<cmd>Telescope keymaps<cr>",
    mode = "n",
    opts = {
      desc = "Telescope: Keymaps",
    },
  },
  {
    lhs = "<leader>fn",
    rhs = function()
      require("telescope.builtin").find_files({
        cwd = vim.fn.stdpath("config"),
      })
    end,
    mode = "n",
    opts = {
      desc = "Telescope: Neovim Config",
    },
  },
}
