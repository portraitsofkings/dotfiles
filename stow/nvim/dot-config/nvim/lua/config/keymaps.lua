vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

local function applyKeymaps(maps)
  for _, map in ipairs(maps) do
    vim.keymap.set(map.mode, map.lhs, map.rhs, map.opts)
  end
end

applyKeymaps(require('config.keymaps.core'))
applyKeymaps(require('config.keymaps.explore'))
applyKeymaps(require('config.keymaps.tab'))
applyKeymaps(require('config.keymaps.toggle'))
applyKeymaps(require('config.keymaps.window'))
applyKeymaps(require('config.keymaps.treesitter-textobjects'))
applyKeymaps(require('config.keymaps.telescope'))
