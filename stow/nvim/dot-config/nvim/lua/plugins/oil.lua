return {
  "stevearc/oil.nvim",
  ---@module 'oil'
  ---@type oil.SetupOpts
  opts = {
    use_default_keymaps = false,
    keymaps = {
      ["<leader>e?"] = { "actions.show_help", mode = "n", desc = "Explore: Show Help" },
      ["<CR>"] = { "actions.select", desc = "Explore: Open" },
      ["<leader>es"] = { "actions.select", opts = { horizontal = true }, desc = "Explore: Open in a Horizontal Split" },
      ["<leader>ev"] = { "actions.select", opts = { vertical = true }, desc = "Explore: Open in a Vertical Split" },
      ["<leader>et"] = { "actions.select", opts = { tab = true }, desc = "Explore: Open in a New Tab" },
      ["<leader>ec"] = { "actions.close", mode = "n", desc = "Explore: Close" },
      ["<leader>eh"] = { "actions.toggle_hidden", mode = "n", desc = "Explore: Toggle Hidden" },
      ["<leader>eo"] = { "actions.change_sort", mode = "n", desc = "Explore: Change Sort Order" },
      ["<leader>ep"] = { "actions.preview", desc = "Explore: Toggle Preview" },
      ["<leader>ex"] = { "actions.open_external", desc = "Explore: Open in External Program" },
    },
  },
  dependencies = { "nvim-tree/nvim-web-devicons" },
  lazy = false,
}
