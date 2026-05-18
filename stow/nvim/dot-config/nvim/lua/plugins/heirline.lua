return {
  "rebelot/heirline.nvim",
  dependencies = {
    { "nvim-tree/nvim-web-devicons", opts = {} },
  },
  event = "VeryLazy",
  config = function()
    -- local conditions = require('heirline.conditions')
    local utils = require("heirline.utils")

    local theme_colors = require("kanagawa.colors").setup().theme
    local preset_colors = {
      bg_dark = theme_colors.ui.bg_dim,
      bright_bg = theme_colors.ui.bg,
      bright_fg = theme_colors.ui.fg,
      red = theme_colors.term[2],
      green = theme_colors.term[3],
      blue = theme_colors.term[5],
      magenta = theme_colors.term[6],
      gray = theme_colors.term[9],
      orange = utils.get_highlight("Constant").fg,
      purple = utils.get_highlight("Statement").fg,
      cyan = utils.get_highlight("Special").fg,
      diag_warning = theme_colors.diag.warning,
      diag_error = theme_colors.diag.error,
      diag_hint = theme_colors.diag.hint,
      diag_info = theme_colors.diag.info,
      git_del = theme_colors.vcs.removed,
      git_add = theme_colors.vcs.added,
      git_change = theme_colors.vcs.changed,
    }
    local colors = vim.tbl_deep_extend("keep", theme_colors, preset_colors)
    require("heirline").load_colors(colors)

    local statusline = require("plugins.heirline.statusline")
    require("heirline").setup({
      statusline = statusline,
    })
  end,
}
