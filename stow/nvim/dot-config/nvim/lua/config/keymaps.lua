local function applyKeymaps(maps)
    for _, map in ipairs(maps) do
        vim.keymap.set(map.mode, map.lhs, map.rhs, map.opts)
    end
end

applyKeymaps(require('config.keymaps.core'))
