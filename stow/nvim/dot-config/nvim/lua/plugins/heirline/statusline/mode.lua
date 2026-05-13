return {
  init = function(self)
    self.mode = vim.fn.mode(1)
    self.modeFirst = self.mode:sub(1, 1)
  end,
  hl = function(self)
    return { bg = self.mode_colors[self.modeFirst], fg = "bg_dark", bold = true }
  end,
  update = {
    "ModeChanged",
    pattern = "*:*",
    callback = vim.schedule_wrap(function()
      vim.cmd("redrawstatus")
    end),
  },
  static = {
    mode_names = {
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
    mode_colors = {
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
    provider = "",
    hl = function(self)
      return { fg = self.mode_colors[self.modeFirst], bg = "bg_dark" }
    end,
  },
  {
    provider = function(self)
      return "%-(" .. self.mode_names[self.modeFirst] .. "%)"
    end,
  },
  {
    provider = "",
    hl = function(self)
      return { fg = self.mode_colors[self.modeFirst], bg = "bg_dark" }
    end,
  },
}
