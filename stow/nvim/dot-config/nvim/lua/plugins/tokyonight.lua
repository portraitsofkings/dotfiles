return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  opts = {
    style = "night",
    styles = {
      floats = "transparent",
    },
    on_highlights = function(hl, _)
      -- Transparent float background for which-key
      hl.WhichKeyNormal = { bg = "none" }
    end,
  },
  config = function(_, opts)
    require("tokyonight").setup(opts)
    vim.cmd.colorscheme("tokyonight")
  end,
}
