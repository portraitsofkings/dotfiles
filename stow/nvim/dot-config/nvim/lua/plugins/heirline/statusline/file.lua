return {
  init = function(self)
    self.fullpath = vim.api.nvim_buf_get_name(0)
    self.tail = vim.fn.fnamemodify(self.fullpath, ":t")
    self.buftype = vim.bo.buftype
    self.filetype = vim.bo.filetype
    self.wintype = vim.fn.getcmdwintype()
    self.oildir = require("oil").get_current_dir(0)
    self.oildir_tail = vim.fn.fnamemodify(self.oildir, ":.")
  end,
  {
    provider = " ",
  },
  {
    provider = function(self)
      local hasName = self.tail ~= ""

      if self.filetype == "oil" then
        if vim.fn.isabsolutepath(self.oildir_tail) == 1 then
          return self.oildir
        else
          return "./" .. self.oildir_tail
        end
      end

      if hasName then
        if self.buftype == "help" then
          return self.tail .. " [Help]"
        end

        return self.tail
      else
        if self.wintype == ":" then
          return "[Command Line]"
        elseif self.wintype == "/" or self.wintype == "?" then
          return "[Search History]"
        end

        if self.buftype == "quickfix" then
          return "[Quickfix]"
        end

        return "[No Name]"
      end
    end,
  },
}
