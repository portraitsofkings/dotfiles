return {
  "stevearc/oil.nvim",
  ---@module 'oil'
  ---@type oil.SetupOpts
  opts = {
    use_default_keymaps = false,
    keymaps = {
      ["<leader>e?"] = { "actions.show_help", mode = "n", opts = { desc = "Explore: Show Help" } },
      ["<CR>"] = { "actions.select", opts = { desc = "Explore: Show Help" } },
      ["<leader>es"] = { "actions.select", opts = { horizontal = true, desc = "Explore: Open in a Horizontal Split" } },
      ["<leader>ev"] = { "actions.select", opts = { vertical = true, desc = "Explore: Open in a Vertical Split" } },
      ["<leader>et"] = { "actions.select", opts = { tab = true, desc = "Explore: Open in a New Tab" } },
      ["<leader>ec"] = { "actions.close", mode = "n", opts = { desc = "Explore: Close" } },
      ["<leader>eh"] = { "actions.toggle_hidden", mode = "n", opts = { desc = "Explore: Toggle Hidden" } },
      ["<leader>eo"] = { "actions.change_sort", mode = "n", opts = { desc = "Explore: Change Sort Order" } },
      ["<leader>ep"] = { "actions.preview", opts = { desc = "Explore: Toggle Preview" } },
      ["<leader>ex"] = { "actions.open_external", opts = { desc = "Explore: Open in External Program" } },
    },
  },
  dependencies = { "nvim-tree/nvim-web-devicons" },
  lazy = false,
}
