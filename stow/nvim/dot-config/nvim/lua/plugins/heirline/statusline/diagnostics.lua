local conditions = require("heirline.conditions")

return {
  condition = function()
    local hasDiagnostics = conditions.has_diagnostics()
    local isInserting = vim.api.nvim_get_mode().mode:match("^i")
    return not isInserting and hasDiagnostics
  end,
  static = {
    error_icon = vim.diagnostic.config()["signs"]["text"][vim.diagnostic.severity.ERROR],
    warn_icon = vim.diagnostic.config()["signs"]["text"][vim.diagnostic.severity.WARN],
    info_icon = vim.diagnostic.config()["signs"]["text"][vim.diagnostic.severity.INFO],
    hint_icon = vim.diagnostic.config()["signs"]["text"][vim.diagnostic.severity.HINT],
  },
  init = function(self)
    self.errors = #vim.diagnostic.get(0, { severity = vim.diagnostic.severity.ERROR })
    self.warnings = #vim.diagnostic.get(0, { severity = vim.diagnostic.severity.WARN })
    self.hints = #vim.diagnostic.get(0, { severity = vim.diagnostic.severity.HINT })
    self.info = #vim.diagnostic.get(0, { severity = vim.diagnostic.severity.INFO })
  end,
  update = { "DiagnosticChanged", "BufEnter" },
  {
    provider = " ",
  },
  {
    provider = function(self)
      if self.errors == 0 then
        return
      end
      local has_next = self.warnings > 0 or self.info > 0 or self.hints > 0
      return self.error_icon .. self.errors .. (has_next and " " or "")
    end,
    hl = { fg = "error" },
  },
  {
    provider = function(self)
      if self.warnings == 0 then
        return
      end
      local has_next = self.info > 0 or self.hints > 0
      return self.warn_icon .. self.warnings .. (has_next and " " or "")
    end,
    hl = { fg = "warning" },
  },
  {
    provider = function(self)
      if self.info == 0 then
        return
      end
      local has_next = self.hints > 0
      return self.info_icon .. self.info .. (has_next and " " or "")
    end,
    hl = { fg = "info" },
  },
  {
    provider = function(self)
      if self.hints == 0 then
        return
      end
      return self.hint_icon .. self.hints
    end,
    hl = { fg = "hint" },
  },
}
