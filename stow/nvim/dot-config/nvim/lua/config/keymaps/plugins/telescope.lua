return {
    {
        '<leader>ff',
        '<cmd>Telescope find_files<cr>',
        mode = 'n',
        desc = 'Telescope Find Files'
    },
    {
        '<leader>fg',
        '<cmd>Telescope live_grep<cr>',
        mode = 'n',
        desc = 'Telescope Live Grep'
    },
    {
        '<leader>fh',
        '<cmd>Telescope help_tags<cr>',
        mode = 'n',
        desc = 'Telescope Find Help'
    },
    {
        '<leader>fb',
        '<cmd>Telescope buffers<cr>',
        mode = 'n',
        desc = 'Telescope Find Buffers'
    },
    {
        '<leader>en',
        function()
            require('telescope.builtin').find_files({
                cwd = vim.fn.stdpath('config')
            })
        end,
        mode = 'n',
        desc = 'Edit Neovim Config'
    }
}
