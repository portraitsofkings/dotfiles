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
    condition = function(self)
      return self.errors > 0
    end,
    { provider = " " },
    {
      provider = function(self)
        return self.error_icon .. self.errors
      end,
      hl = { fg = "diag_error" },
    },
  },
  {
    condition = function(self)
      return self.warnings > 0
    end,
    { provider = " " },
    {
      provider = function(self)
        return self.warn_icon .. self.warnings
      end,
      hl = { fg = "diag_warning" },
    },
  },
  {
    condition = function(self)
      return self.info > 0
    end,
    { provider = " " },
    {
      provider = function(self)
        return self.info_icon .. self.info
      end,
      hl = { fg = "diag_info" },
    },
  },
  {
    condition = function(self)
      return self.hints > 0
    end,
    { provider = " " },
    {
      provider = function(self)
        return self.hint_icon .. self.hints
      end,
      hl = { fg = "diag_hint" },
    },
  },
}
