return {
  {
    lhs = 'af',
    rhs = function()
      require('nvim-treesitter-textobjects.select').select_textobject('@function.outer', "textobjects")
    end,
    mode = {'x', 'o'},
    opts = {
      desc = 'Treesitter Textobjects: Select Outer Function'
    }
  },
  {
    lhs = 'if',
    rhs = function()
      require('nvim-treesitter-textobjects.select').select_textobject('@function.inner', "textobjects")
    end,
    mode = {'x', 'o'},
    opts = {
      desc = 'Treesitter Textobjects: Select Inner Function'
    }
  },
  {
    lhs = 'ir',
    rhs = function()
      require('nvim-treesitter-textobjects.select').select_textobject('@parameter.inner', "textobjects")
    end,
    mode = {'x', 'o'},
    opts = {
      desc = 'Treesitter Textobjects: Select Inner Parameter'
    }
  },
  {
    lhs = 'ar',
    rhs = function()
      require('nvim-treesitter-textobjects.select').select_textobject('@parameter.outer', "textobjects")
    end,
    mode = {'x', 'o'},
    opts = {
      desc = 'Treesitter Textobjects: Select Outer Parameter'
    }
  },
  {
    lhs = 'ac',
    rhs = function()
      require('nvim-treesitter-textobjects.select').select_textobject('@comment.outer', "textobjects")
    end,
    mode = {'x', 'o'},
    opts = {
      desc = 'Treesitter Textobjects: Select Outer Comment'
    }
  },
  {
    lhs = 'ic',
    rhs = function()
      require('nvim-treesitter-textobjects.select').select_textobject('@comment.inner', "textobjects")
    end,
    mode = {'x', 'o'},
    opts = {
      desc = 'Treesitter Textobjects: Select Inner Comment'
    }
  },
  {
    lhs = 'ia',
    rhs = function()
      require('nvim-treesitter-textobjects.select').select_textobject('@attribute.inner', "textobjects")
    end,
    mode = {'x', 'o'},
    opts = {
      desc = 'Treesitter Textobjects: Select Inner Attribute'
    }
  },
  {
    lhs = 'aa',
    rhs = function()
      require('nvim-treesitter-textobjects.select').select_textobject('@attribute.outer', "textobjects")
    end,
    mode = {'x', 'o'},
    opts = {
      desc = 'Treesitter Textobjects: Select Outer Attribute'
    }
  },
}

