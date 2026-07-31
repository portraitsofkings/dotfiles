local smart_splits = function()
  return require("smart-splits")
end

return {
  {
    lhs = "<leader>wH",
    rhs = "<C-w>H",
    mode = "n",
    opts = {
      desc = "Window: Move to the Far Left",
    },
  },
  {
    lhs = "<leader>wL",
    rhs = "<C-w>L",
    mode = "n",
    opts = {
      desc = "Window: Move to the Far Right",
    },
  },
  {
    lhs = "<leader>wK",
    rhs = "<C-w>K",
    mode = "n",
    opts = {
      desc = "Window: Move to the Top",
    },
  },
  {
    lhs = "<leader>wJ",
    rhs = "<C-w>J",
    mode = "n",
    opts = {
      desc = "Window: Move to the Bottom",
    },
  },
  {
    lhs = "<C-h>",
    rhs = "<C-w>h",
    mode = "n",
    opts = {
      desc = "Window: Move Cursor Left",
    },
  },
  {
    lhs = "<C-j>",
    rhs = "<C-w>j",
    mode = "n",
    opts = {
      desc = "Window: Move Cursor Down",
    },
  },
  {
    lhs = "<C-k>",
    rhs = "<C-w>k",
    mode = "n",
    opts = {
      desc = "Window: Move Cursor Up",
    },
  },
  {
    lhs = "<C-l>",
    rhs = "<C-w>l",
    mode = "n",
    opts = {
      desc = "Window: Move Cursor Right",
    },
  },
  {
    lhs = "<M-h>",
    rhs = function()
      smart_splits().resize_left()
    end,
    mode = "n",
    opts = {
      desc = "Window: Resize Left",
    },
  },
  {
    lhs = "<M-j>",
    rhs = function()
      smart_splits().resize_down()
    end,
    mode = "n",
    opts = {
      desc = "Window: Resize Down",
    },
  },
  {
    lhs = "<M-k>",
    rhs = function()
      smart_splits().resize_up()
    end,
    mode = "n",
    opts = {
      desc = "Window: Resize Up",
    },
  },
  {
    lhs = "<M-l>",
    rhs = function()
      smart_splits().resize_right()
    end,
    mode = "n",
    opts = {
      desc = "Window: Resize Right",
    },
  },
  {
    lhs = "<M-=>",
    rhs = "<C-w>=",
    mode = "n",
    opts = {
      desc = "Window: Resize Equally",
    },
  },
  {
    lhs = "<leader>ws",
    rhs = "<C-w>s",
    mode = "n",
    opts = {
      desc = "Window: Horizontal Split",
    },
  },
  {
    lhs = "<leader>wv",
    rhs = "<C-w>v",
    mode = "n",
    opts = {
      desc = "Window: Vertical Split",
    },
  },
  {
    lhs = "<leader>wn",
    rhs = "<cmd>vnew<cr>",
    mode = "n",
    opts = {
      desc = "Window: New",
    },
  },
  {
    lhs = "<leader>wo",
    rhs = "<C-w>o",
    mode = "n",
    opts = {
      desc = "Window: Only",
    },
  },
  {
    lhs = "<leader>wc",
    rhs = "<C-w>c",
    mode = "n",
    opts = {
      desc = "Window: Close",
    },
  },
  {
    lhs = "<leader>wq",
    rhs = "<C-w>q",
    mode = "n",
    opts = {
      desc = "Window: Quit",
    },
  },
  {
    lhs = "<leader>wt",
    rhs = "<C-w>T",
    mode = "n",
    opts = {
      desc = "Window: Move to a New Tab",
    },
  },
}
