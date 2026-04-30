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
    lhs = '<leader>w',
    rhs = '<cmd>w<cr>',
    mode = 'n',
    opts = {
      desc = 'Core: Write File'
    }
  },
  {
    lhs = '<leader>x',
    rhs = '<cmd>x<cr>',
    mode = 'n',
    opts = {
      desc = 'Core: Write and Quit'
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
    lhs = '<leader>q',
    rhs = '<cmd>q<cr>',
    mode = 'n',
    opts = {
      desc = 'Core: Quit'
    }
  },
  {
    lhs = '<leader>qa',
    rhs = '<cmd>qa<cr>',
    mode = 'n',
    opts = {
      desc = 'Core: Quit All'
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
