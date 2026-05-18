local conditions = require("heirline.conditions")

return {
  condition = conditions.lsp_attached,
  hl = { fg = "green", bold = true },
  {
    {
      provider = " ",
    },

    on_click = {
      callback = function()
        vim.cmd("LspInfo")
      end,
      name = "heirline_lsp",
    },
    {
      flexible = 50,
      {
        -- updates inside because otherwise, it doesn't work
        update = { "LspAttach", "LspDetach", "BufEnter", "WinEnter" },
        provider = " [LSP]",
      },
      {
        update = { "LspAttach", "LspDetach", "BufEnter", "WinEnter" },
        provider = " LSP",
      },
    },
  },
}
