local treesitter_select = function(...)
  require("nvim-treesitter-textobjects.select").select_textobject(...)
end

return {
  {
    lhs = "af",
    rhs = function()
      treesitter_select("@function.outer", "textobjects")
    end,
    mode = { "x", "o" },
    opts = {
      desc = "Textobject: Outer Function",
    },
  },
  {
    lhs = "if",
    rhs = function()
      treesitter_select("@function.inner", "textobjects")
    end,
    mode = { "x", "o" },
    opts = {
      desc = "Textobject: Inner Function",
    },
  },
  {
    lhs = "ac",
    rhs = function()
      treesitter_select("@comment.outer", "textobjects")
    end,
    mode = { "x", "o" },
    opts = {
      desc = "Textobject: Outer Comment",
    },
  },
  {
    lhs = "ic",
    rhs = function()
      treesitter_select("@comment.inner", "textobjects")
    end,
    mode = { "x", "o" },
    opts = {
      desc = "Textobject: Inner Comment",
    },
  },
  {
    lhs = "ir",
    rhs = function()
      treesitter_select("@attribute.inner", "textobjects")
    end,
    mode = { "x", "o" },
    opts = {
      desc = "Textobject: Inner Attribute",
    },
  },
  {
    lhs = "ar",
    rhs = function()
      treesitter_select("@attribute.outer", "textobjects")
    end,
    mode = { "x", "o" },
    opts = {
      desc = "Textobject: Outer Attribute",
    },
  },
  {
    lhs = "ih",
    rhs = "<cmd>Gitsigns select_hunk<cr>",
    mode = { "x", "o" },
    opts = {
      desc = "Textobject: Inner Hunk",
    },
  },
}
