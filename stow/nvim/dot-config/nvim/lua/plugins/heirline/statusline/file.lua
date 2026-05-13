return {
  provider = function()
    local fullname = vim.api.nvim_buf_get_name(0)
    local filename = vim.fn.fnamemodify(fullname, ":t")
    return filename ~= "" and " " .. filename or ""
  end,
  hl = { fg = "fg" },
}
