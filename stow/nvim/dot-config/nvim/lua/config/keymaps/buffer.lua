return {
  {
    lhs = "<leader>bf",
    rhs = function()
      require("conform").format()
    end,
    mode = "n",
    opts = {
      desc = "Buffer: Format",
    },
  },
}
