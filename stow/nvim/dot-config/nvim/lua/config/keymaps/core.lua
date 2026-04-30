return {
  {
    lhs = '-',
    rhs = '<cmd>Oil<cr>',
    mode = 'n',
    opts = {
      desc = 'Explore'
    }
  },
  {
    lhs = '<Esc>',
    rhs = '<cmd>nohlsearch<cr>',
    mode = 'n',
    opts = {
      desc = 'Stop search highlighting'
    }
  },
  {
    lhs = '<leader>en',
    rhs = function()
      require('oil').open(vim.fn.stdpath('config'))
    end,
    mode = 'n',
    opts = {
      desc = 'Open Neovim Directory'
    }
  }
}
