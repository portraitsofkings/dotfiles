local names = {
  [""] = "Unknown",
  ["text"] = "Text",
  ["javascript"] = "JavaScript",
  ["typescript"] = "TypeScript",
  ["javascriptreact"] = "JavaScript JSX",
  ["typescriptreact"] = "TypeScript JSX",
  ["html"] = "HTML",
  ["css"] = "CSS",
  ["lua"] = "Lua",
  ["c"] = "C",
  ["cpp"] = "C++",
  ["gitcommit"] = "Git Commit Message",
  ["gitignore"] = "Git Ignore",
  ["markdown"] = "Markdown",
  ["json"] = "JSON",
  ["jsonc"] = "JSON with Comments",
  ["jsonl"] = "JSON Lines",
  ["sh"] = "Shell Script",
  ["python"] = "Python",
  ["xml"] = "XML",
  ["yaml"] = "YAML",
}
local fileFormat = {
  {
    provider = function(self)
      return self.icon and (" " .. self.icon .. " ")
    end,
    hl = function(self)
      return { fg = self.icon_color }
    end,
  },
  {
    hl = function(self)
      return { fg = self.icon_color }
    end,
    provider = function()
      return names[vim.bo.filetype] or vim.bo.filetype
    end,
  },
}

return {
  init = function(self)
    self.icon, self.icon_color =
      require("nvim-web-devicons").get_icon_color_by_filetype(vim.bo.filetype, { default = true })
  end,
  fileFormat,
}
