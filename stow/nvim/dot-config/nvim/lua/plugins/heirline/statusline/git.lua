local conditions = require("heirline.conditions")

local onClick = {
  callback = function()
    vim.cmd("Neogit")
  end,
  name = "heirline_git",
}

return {
  init = function(self)
    self.status_dict = vim.b.gitsigns_status_dict

    vim.system({ "git", "status", "--porcelain" }, { text = true }, function(response)
      self.has_changes = response.stdout ~= ""
    end)

    vim.system({ "git", "branch", "--show-current" }, { text = true }, function(response)
      local NO_ERRORS = response.code == 0

      -- Reset, to break conditions when we cd out of git repo
      self.current_branch = nil

      if NO_ERRORS then
        self.current_branch = vim.trim(response.stdout)
      end
    end)
  end,
  {
    condition = function(self)
      return self.current_branch
    end,
    { provider = " " },
    {
      on_click = onClick,
      { provider = "󰘬 " },
      {
        provider = function(self)
          return self.current_branch
        end,
      },
    },
  },
  {
    on_click = onClick,
    condition = function(self)
      return self.current_branch and self.has_changes
    end,
    provider = "*",
  },
  {
    condition = function(self)
      return self.current_branch and conditions.is_git_repo()
    end,
    {
      flexible = 75,
      {
        on_click = onClick,
        provider = function(self)
          local count = self.status_dict.added or 0
          return count > 0 and ("+" .. count)
        end,
        hl = { fg = "git_add" },
      },
      { provider = "" },
    },
    {
      flexible = 75,
      {
        on_click = onClick,
        provider = function(self)
          local count = self.status_dict.removed or 0
          return count > 0 and ("-" .. count)
        end,
        hl = { fg = "git_del" },
      },
      { provider = "" },
    },
    {
      flexible = 75,
      {
        on_click = onClick,
        provider = function(self)
          local count = self.status_dict.changed or 0
          return count > 0 and ("~" .. count)
        end,
        hl = { fg = "git_change" },
      },
      { provider = "" },
    },
  },
}
