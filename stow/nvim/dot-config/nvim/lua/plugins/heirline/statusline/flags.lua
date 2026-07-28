return {
  {
    condition = function()
      local isNormalBuffer = vim.bo.buftype == ""
      local name = vim.api.nvim_buf_get_name(0)
      local hasName = name ~= ""
      local fileExists = vim.fn.getftype(name) ~= ""
      local isNew = isNormalBuffer and hasName and not fileExists
      return isNew
    end,
    { provider = " " },
    { provider = "[New]" },
  },
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
