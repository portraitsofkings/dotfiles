return {
    {
        lhs = '<leader>ff',
        rhs = '<cmd>Telescope find_files<cr>',
        mode = 'n',
        opts = {
          desc = 'Telescope Find Files'
        }
    },
    {
        lhs = '<leader>fg',
        rhs = '<cmd>Telescope live_grep<cr>',
        mode = 'n',
        opts = {
          desc = 'Telescope Live Grep'
        }
    },
    {
        lhs = '<leader>fh',
        rhs = '<cmd>Telescope help_tags<cr>',
        mode = 'n',
        opts = {
          desc = 'Telescope Find Help'
        }
    },
    {
        lhs = '<leader>fb',
        rhs = '<cmd>Telescope buffers<cr>',
        mode = 'n',
        opts = {
          desc = 'Telescope Find Buffers'
        }
    },
    {
        lhs = '<leader>fn',
        rhs = function()
            require('telescope.builtin').find_files({
                cwd = vim.fn.stdpath('config')
            })
        end,
        mode = 'n',
        opts = {
          desc = 'Fuzzy Find Neovim Directory'
        }
    }

}
