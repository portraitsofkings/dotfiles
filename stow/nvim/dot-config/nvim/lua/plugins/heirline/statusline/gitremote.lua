return {
  init = function(self)
    vim.system({ "git", "rev-list", "--left-right", "--count", "HEAD...@{u}" }, { text = true }, function(response)
      local ahead, behind = response.stdout:match("(%d+)%s+(%d)")
      self.ahead = tonumber(ahead) or 0
      self.behind = tonumber(behind) or 0
    end)
  end,
  flexible = 75,
  {
    condition = function(self)
      return (self.ahead and self.behind) and (self.ahead > 0 or self.behind > 0)
    end,
    {
      provider = " ",
    },
    {
      on_click = {
        callback = function()
          vim.cmd("Neogit")
        end,
        name = "heirline_git",
      },
      provider = function(self)
        return " " .. tostring(self.behind) .. "" .. tostring(self.ahead) .. ""
      end,
    },
  },
  {
    provider = "",
  },
}
