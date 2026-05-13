local conditions = require("heirline.conditions")

return {
  condition = conditions.lsp_attached,
  update = { "LspAttach", "LspDetach", "BufEnter", "WinEnter" },
  provider = function()
    return "  [LSP]"
  end,
  hl = { fg = "green", bold = true },
}
