return {
  {
    condition = function()
      return vim.bo.modified
    end,
    hl = { fg = "green" },
    { provider = " " },
    { provider = "[+]" },
  },
  {
    condition = function()
      return not vim.bo.modifiable or vim.bo.readonly
    end,
    { provider = " " },
    { provider = "" },
    hl = { fg = "orange" },
  },
}
