local conditions = require("heirline.conditions")

local mode = require("plugins.heirline.statusline.mode")
local file = require("plugins.heirline.statusline.file")
local flags = require("plugins.heirline.statusline.flags")
local gitremote = require("plugins.heirline.statusline.gitremote")
local git = require("plugins.heirline.statusline.git")
local diagnostics = require("plugins.heirline.statusline.diagnostics")
local lsp = require("plugins.heirline.statusline.lsp")
local live_server = require("plugins.heirline.statusline.live-server")
local encoding = require("plugins.heirline.statusline.encoding")
local file_format = require("plugins.heirline.statusline.fileformat")
local file_type = require("plugins.heirline.statusline.filetype")
local ruler = require("plugins.heirline.statusline.ruler")

local separator = { provider = "%=" }
local trim = { provider = "%<" }

return {
  hl = function(self)
    return { fg = self:getModeColor(), bg = "bg" }
  end,
  static = {
    MODE_COLORS = {
      n = "red",
      i = "green",
      v = "magenta",
      V = "magenta",
      ["\22"] = "magenta",
      c = "orange",
      s = "purple",
      S = "purple",
      ["\19"] = "purple",
      R = "orange",
      r = "orange",
      ["!"] = "red",
      t = "red",
    },
    getModeColor = function(self)
      local currentMode = conditions.is_active() and vim.fn.mode() or "n"
      return self.MODE_COLORS[currentMode]
    end,
  },
  mode,
  file,
  trim,
  flags,
  git,
  gitremote,
  diagnostics,
  live_server,
  separator,
  lsp,
  separator,
  ruler,
  encoding,
  file_format,
  file_type,
}
