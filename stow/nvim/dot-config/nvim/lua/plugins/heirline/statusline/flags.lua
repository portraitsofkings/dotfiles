return {
  {
    condition = function()
      local isNormalBuffer = vim.bo.buftype == ""
      local hasName = vim.api.nvim_buf_get_name(0) ~= ""
      return isNormalBuffer and hasName
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
