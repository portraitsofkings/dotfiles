return {
  "selimacerbas/live-server.nvim",
  dependencies = {
    "nvim-telescope/telescope.nvim",
  },
  opts = {
    default_port = 8000,
    live_reload = {
      enabled = true,
      inject_script = true,
      debounce = 120,
      css_inject = true,
    },
    directory_listing = { enabled = true, show_hidden = false },
  },
  config = function(_, opts)
    require("live_server").setup(opts)
  end,
}
