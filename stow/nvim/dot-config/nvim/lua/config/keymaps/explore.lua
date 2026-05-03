return {
  {
    lhs = '<leader>en',
    rhs = function()
      require('oil').open(vim.fn.stdpath('config'))
    end,
    mode = 'n',
    opts = {
      desc = 'Explore: Neovim Config Directory'
    }
  },
}
