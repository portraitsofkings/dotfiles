return {
  {
    lhs = '-',
    rhs = '<cmd>Oil<cr>',
    mode = 'n',
    opts = {
      desc = 'Core: Explore'
    }
  },
  {
    lhs = '<leader>?',
    rhs = '<cmd>Telescope keymaps<cr>',
    mode = 'n',
    opts = {
      desc = 'Core: Browse Keymaps'
    }
  },
  {
    lhs = '<Esc>',
    rhs = '<cmd>nohlsearch<cr>',
    mode = 'n',
    opts = {
      desc = 'Core: Stop Search Highlighting'
    }
  },
  {
    lhs = '<leader>en',
    rhs = function()
      require('oil').open(vim.fn.stdpath('config'))
    end,
    mode = 'n',
    opts = {
      desc = 'Core: Open Neovim Directory'
    }
  }
}
