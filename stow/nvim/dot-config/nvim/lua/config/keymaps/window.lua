return {
  {
    lhs = '<C-h>',
    rhs = '<C-w>h',
    mode = 'n',
    opts = {
      desc = 'Window: Go Left'
    }
  },
  {
    lhs = '<C-l>',
    rhs = '<C-w>l',
    mode = 'n',
    opts = {
      desc = 'Window: Go Right'
    }
  },
  {
    lhs = '<C-k>',
    rhs = '<C-w>k',
    mode = 'n',
    opts = {
      desc = 'Window: Go Up'
    }
  },
  {
    lhs = '<C-j>',
    rhs = '<C-w>j',
    mode = 'n',
    opts = {
      desc = 'Window: Go Down'
    }
  },
  {
    lhs = '<M-h>',
    rhs = '<C-w><',
    mode = 'n',
    opts = {
      desc = 'Window: Decrease Horizontal Size'
    }
  },
  {
    lhs = '<M-l>',
    rhs = '<C-w>>',
    mode = 'n',
    opts = {
      desc = 'Increase Window Horizontal Size'
    }
  },
  {
    lhs = '<M-k>',
    rhs = '<C-w>+',
    mode = 'n',
    opts = {
      desc = 'Window: Increase Vertical Size'
    }
  },
  {
    lhs = '<M-j>',
    rhs = '<C-w>-',
    mode = 'n',
    opts = {
      desc = 'Window: Decrease Vertical Size'
    }
  },
  {
    lhs = '<M-=>',
    rhs = '<C-w>=',
    mode = 'n',
    opts = {
      desc = 'Window: Resize Equally'
    }
  },
  {
    lhs = '<leader>ws',
    rhs = '<cmd>split<cr>',
    mode = 'n',
    opts = {
      desc = 'Window: Horizontal Split'
    }
  },
  {
    lhs = '<leader>wv',
    rhs = '<cmd>vertical split<cr>',
    mode = 'n',
    opts = {
      desc = 'Window: Vertical Split'
    }
  },
  {
    lhs = '<leader>wo',
    rhs = '<cmd>only<cr>',
    mode = 'n',
    opts = {
      desc = 'Window: Only'
    }
  },
  {
    lhs = '<leader>wc',
    rhs = '<cmd>close<cr>',
    mode = 'n',
    opts = {
      desc = 'Window: Close'
    }
  },
  {
    lhs = '<leader>wt',
    rhs = '<C-w>T',
    mode = 'n',
    opts = {
      desc = 'Window: Move to a New Tab'
    }
  },
}
