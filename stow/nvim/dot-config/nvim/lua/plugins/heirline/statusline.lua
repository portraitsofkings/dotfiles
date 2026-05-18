local mode = require("plugins.heirline.statusline.mode")
local file = require("plugins.heirline.statusline.file")
local flags = require("plugins.heirline.statusline.flags")
local gitremote = require("plugins.heirline.statusline.gitremote")
local git = require("plugins.heirline.statusline.git")
local diagnostics = require("plugins.heirline.statusline.diagnostics")
local lsp = require("plugins.heirline.statusline.lsp")
local live_server = require("plugins.heirline.statusline.live-server")
-- local Encoding = require("plugins.heirline.statusline.encoding")
-- local FileFormat = require("plugins.heirline.statusline.fileformat")
-- local FileType = require("plugins.heirline.statusline.filetype")
-- local Ruler = require("plugins.heirline.statusline.ruler")

return { mode, file, flags, git, gitremote, diagnostics, lsp, live_server }
