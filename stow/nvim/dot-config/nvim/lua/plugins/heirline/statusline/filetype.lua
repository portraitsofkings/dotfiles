return {
  init = function(self)
    self.icon, self.icon_color =
      require("nvim-web-devicons").get_icon_color_by_filetype(vim.bo.filetype, { default = true })
  end,
  {
    provider = function(self)
      return self.icon and (" " .. self.icon .. " ")
    end,
    hl = function(self)
      return { fg = self.icon_color }
    end,
  },
  {
    hl = function(self)
      return { fg = self.icon_color }
    end,
    provider = function()
      return vim.bo.filetype
    end,
  },
}
