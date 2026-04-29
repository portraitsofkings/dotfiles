return {
  'rebelot/heirline.nvim',
  dependencies = {
    { 'nvim-tree/nvim-web-devicons', opts = {} }
  },
  config = function()
    local conditions = require('heirline.conditions')
    local utils = require('heirline.utils')

    local ModeText = {
      init = function(self)
        self.mode = vim.fn.mode(1)
        self.modeFirst = self.mode:sub(1, 1)
      end,
      hl = function(self)
        return { bg = self.mode_colors[self.modeFirst], fg = 'bg_dark', bold = true, }
      end,
      update = {
        "ModeChanged",
        pattern = "*:*",
        callback = vim.schedule_wrap(function()
          vim.cmd("redrawstatus")
        end),
      },
      static = {
        mode_names = {
          n = "N",
          no = "N?",
          nov = "N?",
          noV = "N?",
          ["no\22"] = "N?",
          niI = "Ni",
          niR = "Nr",
          niV = "Nv",
          nt = "Nt",
          v = "V",
          vs = "Vs",
          V = "V_",
          Vs = "Vs",
          ["\22"] = "^V",
          ["\22s"] = "^V",
          s = "S",
          S = "S_",
          ["\19"] = "^S",
          i = "I",
          ic = "Ic",
          ix = "Ix",
          R = "R",
          Rc = "Rc",
          Rx = "Rx",
          Rv = "Rv",
          Rvc = "Rv",
          Rvx = "Rv",
          c = "C",
          cv = "Ex",
          r = "...",
          rm = "M",
          ["r?"] = "?",
          ["!"] = "!",
          t = "T",
        },
        mode_colors = {
          n = "blue" ,
          i = "green",
          v = "magenta",
          V =  "magenta",
          ["\22"] =  "magenta",
          c =  "orange",
          s =  "purple",
          S =  "purple",
          ["\19"] =  "purple",
          R =  "orange",
          r =  "orange",
          ["!"] =  "red",
          t =  "red",
        }
      },
      {
        provider = '',
        hl = function(self)
          return { fg = self.mode_colors[self.modeFirst], bg = 'bg_dark' }
        end
      },
      {
        provider = function(self)
          return "%-("..self.mode_names[self.modeFirst].."%)"
        end,
      },
      {
        provider = '',
        hl = function(self)
          return { fg = self.mode_colors[self.modeFirst], bg = 'bg_dark' }
        end
      },
    }

    local FileNameBlock = {
      init = function(self)
        self.filename = vim.api.nvim_buf_get_name(0)
      end,
    }

    local FileIcon = {
      init = function(self)
        local filename = self.filename
        local extension = vim.fn.fnamemodify(filename, ":e")
        self.icon, self.icon_color = require("nvim-web-devicons").get_icon_color(filename, extension, { default = true })
      end,
      provider = function(self)
        return self.icon and (" " .. self.icon .. " ")
      end,
      hl = function(self)
        return { fg = self.icon_color }
      end
    }

    local FileName = {
      condition = function()
        return vim.bo.filetype ~= 'help'
      end,
      provider = function(self)
        local filename = vim.fn.fnamemodify(self.filename, ":.")
        if filename == "" then return "[No Name]" end
        return filename
      end,
      hl = function()
        local style = {}

        style.fg = utils.get_highlight("Directory").fg

        if vim.bo.modified then
          style.bold = true
        end

        return style
      end,
    }

    local FileFlags = {
      {
        condition = function()
          return vim.bo.modified
        end,
        provider = " [+]",
        hl = { fg = "green" },
      },
      {
        condition = function()
          return not vim.bo.modifiable or vim.bo.readonly
        end,
        provider = " ",
        hl = { fg = "orange" },
      },
    }

    local HelpSection = {
      condition = function()
        return vim.bo.filetype == 'help'
      end,
      provider = function()
        local filename = vim.api.nvim_buf_get_name(0)
        return vim.fn.fnamemodify(filename, ":t")
      end,
      hl = { fg = 'blue' }
    }

    FileNameBlock = utils.insert(FileNameBlock,
    FileIcon,
    HelpSection,
    FileName,
    FileFlags,
    -- this means that the statusline is cut here when there's not enough space
    { provider = '%<'}
  )
  local Git = {
    condition = conditions.is_git_repo,

    init = function(self)
      self.status_dict = vim.b.gitsigns_status_dict
      self.has_changes = self.status_dict.added ~= 0 or self.status_dict.removed ~= 0 or self.status_dict.changed ~= 0
    end,

    hl = { fg = "orange" },


    {   -- git branch name
      provider = function(self)
        return "  " .. self.status_dict.head
      end,
      hl = { bold = true }
    },
    -- You could handle delimiters, icons and counts similar to Diagnostics
    {
      condition = function(self)
        return self.has_changes
      end,
      provider = "("
    },
    {
      provider = function(self)
        local count = self.status_dict.added or 0
        return count > 0 and ("+" .. count)
      end,
      hl = { fg = "git_add" },
    },
    {
      provider = function(self)
        local count = self.status_dict.removed or 0
        return count > 0 and ("-" .. count)
      end,
      hl = { fg = "git_del" },
    },
    {
      provider = function(self)
        local count = self.status_dict.changed or 0
        return count > 0 and ("~" .. count)
      end,
      hl = { fg = "git_change" },
    },
    {
      condition = function(self)
        return self.has_changes
      end,
      provider = ")",
    },
  }
  local Diagnostics = {
    condition = conditions.has_diagnostics,
    static = {
      error_icon = vim.diagnostic.config()['signs']['text'][vim.diagnostic.severity.ERROR],
      warn_icon = vim.diagnostic.config()['signs']['text'][vim.diagnostic.severity.WARN],
      info_icon = vim.diagnostic.config()['signs']['text'][vim.diagnostic.severity.INFO],
      hint_icon = vim.diagnostic.config()['signs']['text'][vim.diagnostic.severity.HINT],
    },
    init = function(self)
      self.errors = #vim.diagnostic.get(0, { severity = vim.diagnostic.severity.ERROR })
      self.warnings = #vim.diagnostic.get(0, { severity = vim.diagnostic.severity.WARN })
      self.hints = #vim.diagnostic.get(0, { severity = vim.diagnostic.severity.HINT })
      self.info = #vim.diagnostic.get(0, { severity = vim.diagnostic.severity.INFO })
    end,
    update = { "DiagnosticChanged", "BufEnter" },
    {
      provider = " ",
    },
    {
      provider = function(self)
        -- 0 is just another output, we can decide to print it or not!
        return self.errors > 0 and (self.error_icon .. self.errors)
      end,
      hl = { fg = "error" },
    },
    {
      provider = " ",
      condition = function(self)
        return self.warnings > 0 or self.info > 0 or self.hints > 0
      end
    },
    {
      provider = function(self)
        return self.warnings > 0 and (self.warn_icon .. self.warnings)
      end,
      hl = { fg = "warning" },
    },
    {
      provider = " ",
      condition = function(self)
        return self.info > 0 or self.hints > 0
      end
    },
    {
      provider = function(self)
        return self.info > 0 and (self.info_icon .. self.info)
      end,
      hl = { fg = "info" },
    },
    {
      provider = " ",
      condition = function(self)
        return self.hints > 0
      end
    },
    {
      provider = function(self)
        return self.hints > 0 and (self.hint_icon .. self.hints)
      end,
      hl = { fg = "hint" },
    },
  }

  local Ruler = {
    -- %l = current line number
    -- %L = number of lines in the buffer
    -- %c = column number
    -- %P = percentage through file of displayed window
    provider = " %(%l/%L%):%-3c %P",
  }

  local LspProgress = {
    {
      provider = " "
    },
    {
      provider = function()
        return require('lsp-progress').progress()
      end,
      update = {
        'User',
        pattern = 'LspProgressStatusUpdated',
        callback = vim.schedule_wrap(function()
          vim.cmd('redrawstatus')
        end),
      }
    }
  }

  -- load color aliases from the theme
  local theme_colors = require("tokyonight.colors").setup()
  local preset_colors = {
    bright_bg = utils.get_highlight("Folded").bg,
    bright_fg = utils.get_highlight("Folded").fg,
    red = utils.get_highlight("DiagnosticError").fg,
    dark_red = utils.get_highlight("DiffDelete").bg,
    green = utils.get_highlight("String").fg,
    blue = utils.get_highlight("Function").fg,
    gray = utils.get_highlight("NonText").fg,
    orange = utils.get_highlight("Constant").fg,
    purple = utils.get_highlight("Statement").fg,
    cyan = utils.get_highlight("Special").fg,
    diag_warn = utils.get_highlight("DiagnosticWarn").fg,
    diag_error = utils.get_highlight("DiagnosticError").fg,
    diag_hint = utils.get_highlight("DiagnosticHint").fg,
    diag_info = utils.get_highlight("DiagnosticInfo").fg,
    git_del = utils.get_highlight("GitSignsDelete").fg,
    git_add = utils.get_highlight("GitSignsAdd").fg,
    git_change = utils.get_highlight("GitSignsChange").fg,
  }

  local colors = vim.tbl_deep_extend('keep', theme_colors, preset_colors)

  require('heirline').load_colors(colors)

  -- assemble the final statusline
  local statusline = { ModeText, FileNameBlock, Git, Diagnostics, LspProgress, { provider = '%=' }, Ruler }
  require('heirline').setup({ statusline = statusline })
end
}
