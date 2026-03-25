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
                    return self.errors > 0 and (self.error_icon .. self.errors .. " ")
                end,
                hl = { fg = "error" },
            },
            {
                provider = function(self)
                    return self.warnings > 0 and (self.warn_icon .. self.warnings .. " ")
                end,
                hl = { fg = "warning" },
            },
            {
                provider = function(self)
                    return self.info > 0 and (self.info_icon .. self.info .. " ")
                end,
                hl = { fg = "info" },
            },
            {
                provider = function(self)
                    return self.hints > 0 and (self.hint_icon .. self.hints)
                end,
                hl = { fg = "hint" },
            },
            {
                provider = " ",
            },
        }

        local Ruler = {
            -- %l = current line number
            -- %L = number of lines in the buffer
            -- %c = column number
            -- %P = percentage through file of displayed window
            provider = " %(%l/%L%):%-3c %P",
        }

        -- load color aliases from the theme
        local colors = require("tokyonight.colors").setup()
        require('heirline').load_colors(colors)

        -- assemble the final statusline
        local statusline = { ModeText, FileNameBlock, Diagnostics, { provider = '%=' }, Ruler }
        require('heirline').setup({ statusline = statusline })
    end
}
