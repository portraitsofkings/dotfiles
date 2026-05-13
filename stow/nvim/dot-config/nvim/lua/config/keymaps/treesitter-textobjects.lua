return {
  {
    lhs = "af",
    rhs = function()
      require("nvim-treesitter-textobjects.select").select_textobject("@function.outer", "textobjects")
    end,
    mode = { "x", "o" },
    opts = {
      desc = "Treesitter Textobjects: Outer Function",
    },
  },
  {
    lhs = "if",
    rhs = function()
      require("nvim-treesitter-textobjects.select").select_textobject("@function.inner", "textobjects")
    end,
    mode = { "x", "o" },
    opts = {
      desc = "Treesitter Textobjects: Inner Function",
    },
  },
  {
    lhs = "ac",
    rhs = function()
      require("nvim-treesitter-textobjects.select").select_textobject("@comment.outer", "textobjects")
    end,
    mode = { "x", "o" },
    opts = {
      desc = "Treesitter Textobjects: Outer Comment",
    },
  },
  {
    lhs = "ic",
    rhs = function()
      require("nvim-treesitter-textobjects.select").select_textobject("@comment.inner", "textobjects")
    end,
    mode = { "x", "o" },
    opts = {
      desc = "Treesitter Textobjects: Inner Comment",
    },
  },
  {
    lhs = "ir",
    rhs = function()
      require("nvim-treesitter-textobjects.select").select_textobject("@attribute.inner", "textobjects")
    end,
    mode = { "x", "o" },
    opts = {
      desc = "Treesitter Textobjects: Inner Attribute",
    },
  },
  {
    lhs = "ar",
    rhs = function()
      require("nvim-treesitter-textobjects.select").select_textobject("@attribute.outer", "textobjects")
    end,
    mode = { "x", "o" },
    opts = {
      desc = "Treesitter Textobjects: Outer Attribute",
    },
  },
}
