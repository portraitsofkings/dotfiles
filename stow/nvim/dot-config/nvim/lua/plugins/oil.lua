return {
  'stevearc/oil.nvim',
  ---@module 'oil'
  ---@type oil.SetupOpts
  opts = {
    use_default_keymaps = false,
    keymaps = {
      ["<leader>e?"] = { "actions.show_help", mode = "n" },
      ["<CR>"] = "actions.select",
      ["<leader>es"] = { "actions.select", opts = { horizontal = true } },
      ["<leader>ev"] = { "actions.select", opts = { vertical = true } },
      ["<leader>et"] = { "actions.select", opts = { tab = true } },
      ["<leader>ec"] = { "actions.close", mode = "n" },
      ["<leader>eh"] = { "actions.toggle_hidden", mode = "n" },
      ["<leader>eo"] = { "actions.change_sort", mode = "n" },
      ["<leader>ep"] = { "actions.preview" },
    }
  },
  dependencies = { { "nvim-mini/mini.icons", opts = {} } },
  lazy = false
}
