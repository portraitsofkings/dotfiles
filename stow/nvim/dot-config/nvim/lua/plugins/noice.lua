return {
  "folke/noice.nvim",
  event = "VeryLazy",
  dependencies = {
    "MunifTanjim/nui.nvim",
  },
  opts = {
    messages = {
      enabled = false,
    },
    lsp = {
      progress = {
        enabled = false,
      },
    },
    cmdline = {
      format = {
        input = {
          view = "cmdline"
        },
      },
    },
  },
}
