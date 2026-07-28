return {
  init = function(self)
    self.fullpath = vim.api.nvim_buf_get_name(0)
    self.tail = vim.fn.fnamemodify(self.fullpath, ":t")
  end,
  {
    provider = " ",
  },
  {
    provider = function(self)
      return self.tail ~= "" and self.tail or "[No Name]"
    end,
  },
}
