return {
  "rebelot/kanagawa.nvim",
  opts = {
    colors = {
      theme = {
        all = {
          ui = {
            -- No gutter highlight
            bg_gutter = "none",
          },
        },
      },
    },
  },
  config = function(_, opts)
    require("kanagawa").setup(opts)

    vim.cmd.colorscheme("kanagawa")
  end,
}
