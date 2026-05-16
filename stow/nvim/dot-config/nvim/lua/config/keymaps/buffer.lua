local smart_splits = function()
  return require("smart-splits")
end

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
  {
    lhs = "<leader>bh",
    rhs = function()
      smart_splits().swap_buf_left()
    end,
    mode = "n",
    opts = {
      desc = "Buffer: Swap Left",
    },
  },
  {
    lhs = "<leader>bj",
    rhs = function()
      smart_splits().swap_buf_down()
    end,
    mode = "n",
    opts = {
      desc = "Buffer: Swap Down",
    },
  },
  {
    lhs = "<leader>bk",
    rhs = function()
      smart_splits().swap_buf_up()
    end,
    mode = "n",
    opts = {
      desc = "Buffer: Swap Up",
    },
  },
  {
    lhs = "<leader>bl",
    rhs = function()
      smart_splits().swap_buf_right()
    end,
    mode = "n",
    opts = {
      desc = "Buffer: Swap Right",
    },
  },
}
