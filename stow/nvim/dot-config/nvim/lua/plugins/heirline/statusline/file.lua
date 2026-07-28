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
      local hasName = self.tail ~= ""
      local bufType = vim.bo.buftype
      if hasName then
        if bufType == "help" then
          return self.tail .. " [Help]"
        end

        return self.tail
      else
        local windowType = vim.fn.getcmdwintype()
        if windowType == ":" then
          return "[Command Line]"
        elseif windowType == "/" or windowType == "?" then
          return "[Search History]"
        end

        if bufType == "quickfix" then
          return "[Quickfix]"
        end

        return "[No Name]"
      end
    end,
  },
}
