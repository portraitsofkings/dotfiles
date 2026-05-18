local conditions = require("heirline.conditions")

return {
  condition = conditions.lsp_attached,
  update = { "LspAttach", "LspDetach", "BufEnter", "WinEnter" },
  {
    provider = " ",
  },
  {
    provider = function()
      return " [LSP]"
    end,
    hl = { fg = "green", bold = true },
    on_click = {
      callback = function()
        vim.cmd("LspInfo")
      end,
      name = "heirline_lsp",
    },
  },
}
