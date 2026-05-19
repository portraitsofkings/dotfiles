return {
  "rebelot/heirline.nvim",
  dependencies = {
    { "nvim-tree/nvim-web-devicons", opts = {} },
  },
  config = function()
    -- local conditions = require("heirline.conditions")
    -- local utils = require("heirline.utils")

    -- https://github.com/folke/tokyonight.nvim/tree/main/lua/tokyonight/colors
    local theme_colors = require("tokyonight.colors").setup()
    local preset_colors = {
      bg = theme_colors.bg,
      bg_dark = theme_colors.bg_dark,
      bg_dark1 = theme_colors.bg_dark1,
      bg_highlight = theme_colors.bg_highlight,
      blue = theme_colors.blue,
      blue0 = theme_colors.blue0,
      blue1 = theme_colors.blue1,
      blue2 = theme_colors.blue2,
      blue5 = theme_colors.blue5,
      blue6 = theme_colors.blue6,
      blue7 = theme_colors.blue7,
      comment = theme_colors.comment,
      cyan = theme_colors.cyan,
      dark3 = theme_colors.dark3,
      dark5 = theme_colors.dark5,
      fg = theme_colors.fg,
      fg_dark = theme_colors.fg_dark,
      fg_gutter = theme_colors.fg_gutter,
      green = theme_colors.green,
      green1 = theme_colors.green1,
      green2 = theme_colors.green2,
      magenta = theme_colors.magenta,
      magenta2 = theme_colors.magenta2,
      orange = theme_colors.orange,
      purple = theme_colors.purple,
      red = theme_colors.red,
      red1 = theme_colors.red1,
      teal = theme_colors.teal,
      terminal_black = theme_colors.terminal_black,
      yellow = theme_colors.yellow,
      git_del = theme_colors.git.delete,
      git_add = theme_colors.git.add,
      git_change = theme_colors.git.change,

      diag_warning = theme_colors.warning,
      diag_error = theme_colors.error,
      diag_hint = theme_colors.hint,
      diag_info = theme_colors.info,
    }

    local colors = vim.tbl_deep_extend("keep", theme_colors, preset_colors)
    require("heirline").load_colors(colors)

    local statusline = require("plugins.heirline.statusline")
    require("heirline").setup({
      statusline = statusline,
    })
  end,
}
