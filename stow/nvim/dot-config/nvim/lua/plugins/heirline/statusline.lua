local Mode = require("plugins.heirline.statusline.mode")
local File = require("plugins.heirline.statusline.file")
local Flags = require("plugins.heirline.statusline.flags")
local Git = require("plugins.heirline.statusline.git")
local Diagnostics = require("plugins.heirline.statusline.diagnostics")
local LSP = require("plugins.heirline.statusline.lsp")
local Encoding = require("plugins.heirline.statusline.encoding")
local FileFormat = require("plugins.heirline.statusline.fileformat")
local FileType = require("plugins.heirline.statusline.filetype")
local Ruler = require("plugins.heirline.statusline.ruler")

return { Mode, Flags, File, Git, Diagnostics, LSP, { provider = "%-<%=%<" }, Ruler, Encoding, FileFormat, FileType }
