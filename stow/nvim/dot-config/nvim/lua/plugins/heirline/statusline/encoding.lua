return {
  provider = function()
    local enc = (vim.bo.fenc ~= '' and vim.bo.fenc) or vim.o.enc -- :h 'enc'
    return " " .. enc:upper()
  end,
  hl = { fg = "fg" }
}
