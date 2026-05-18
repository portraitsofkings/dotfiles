local formats = {
  ["unix"] = "LF",
  ["dos"] = "CRLF",
  ["mac"] = "CR",
}

return {
  init = function(self)
    self.format = formats[vim.bo.fileformat] or vim.bo.fileformat
  end,
  flexible = 5,
  {
    { provider = " " },
    {
      provider = function(self)
        return self.format
      end,
    },
  },
  {
    provider = "",
  },
}
