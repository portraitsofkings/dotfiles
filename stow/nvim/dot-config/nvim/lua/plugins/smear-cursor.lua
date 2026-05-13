return {
  "sphamba/smear-cursor.nvim",
  opts = {
    filetypes_disabled = {
      "noice",
    },
    -- Fix unreadable search in noice.nvim command line
    never_draw_over_target = true,
    hide_target_hack = true,
  },
}
