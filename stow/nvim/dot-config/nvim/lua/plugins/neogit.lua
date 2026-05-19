return {
  "NeogitOrg/neogit",
  lazy = true,
  dependencies = {
    "sindrets/diffview.nvim",
    "m00qek/baleia.nvim",
    "nvim-telescope/telescope.nvim",
  },
  cmd = "Neogit",
  opts = {
    commit_editor = {
      spell_check = false,
    },
  },
  keys = {
    { "<leader>gg", "<cmd>Neogit<cr>", desc = "Git: Neogit UI" },
  },
}
