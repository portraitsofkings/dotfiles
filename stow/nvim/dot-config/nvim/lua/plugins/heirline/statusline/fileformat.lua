return {
  provider = function()
    local format = vim.bo.fileformat
    local out = ""

    if format == "unix" then
      out = "LF"
    end

    if format == "dos" then
      out = "CRLF"
    end

    if format == "mac" then
      out = "CR"
    end

    return " " .. (#out > 0 and out or format)
  end,
  hl = { fg = "fg" },
}
