return {
  init = function(self)
    self.encoding = (vim.bo.fenc ~= "" and vim.bo.fenc:upper()) or vim.o.enc:upper()
  end,
  flexible = 1,
  {
    { provider = " " },
    {
      provider = function(self)
        return self.encoding
      end,
    },
  },
  { provider = "" },
}
