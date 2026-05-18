return {
  hl = { fg = "fg" },
  init = function(self)
    self.fullpath = vim.api.nvim_buf_get_name(0)
    self.tail = vim.fn.fnamemodify(self.fullpath, ":t")
  end,
  {
    condition = function(self)
      return self.fullpath ~= ""
    end,
    {
      provider = " ",
    },
    {
      provider = function(self)
        return self.tail
      end,
    },
  },
}
