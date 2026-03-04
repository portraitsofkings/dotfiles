-- Fix lazy.nvim not setting it's colorscheme
-- install = { colorscheme = { "" } } doesn't do anything except when installing
vim.api.nvim_create_autocmd("FileType", {
    pattern = 'lazy',
    callback = function()
        vim.cmd.colorscheme('tokyonight')
    end
})
