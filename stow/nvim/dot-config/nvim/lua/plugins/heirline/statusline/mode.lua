local function getName(ctx)
  return ctx.MODE_NAMES[ctx.modeFirst]
end

local function getHighlight(ctx)
  return ctx.MODE_COLORS[ctx.modeFirst]
end

return {
  init = function(self)
    self.mode = vim.fn.mode(1)
    self.modeFirst = self.mode:sub(1, 1)
  end,
  hl = function(self)
    return { bg = getHighlight(self), fg = "bg_dark", bold = true }
  end,
  update = {
    "ModeChanged",
    pattern = "*:*",
    callback = vim.schedule_wrap(function()
      vim.cmd("redrawstatus")
    end),
  },
  static = {
    MODE_NAMES = {
      n = "N",
      no = "N?",
      nov = "N?",
      noV = "N?",
      ["no\22"] = "N?",
      niI = "Ni",
      niR = "Nr",
      niV = "Nv",
      nt = "Nt",
      v = "V",
      vs = "Vs",
      V = "V_",
      Vs = "Vs",
      ["\22"] = "^V",
      ["\22s"] = "^V",
      s = "S",
      S = "S_",
      ["\19"] = "^S",
      i = "I",
      ic = "Ic",
      ix = "Ix",
      R = "R",
      Rc = "Rc",
      Rx = "Rx",
      Rv = "Rv",
      Rvc = "Rv",
      Rvx = "Rv",
      c = "C",
      cv = "Ex",
      r = "...",
      rm = "M",
      ["r?"] = "?",
      ["!"] = "!",
      t = "T",
    },
    MODE_COLORS = {
      n = "blue",
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
  },
  {
    provider = function(self)
      return " " .. getName(self) .. " "
    end,
  },
}
