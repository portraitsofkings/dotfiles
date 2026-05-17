return {
  condition = function()
    return require("live_server").statusline() ~= ""
  end,
  provider = function()
    return " " .. require("live_server").statusline()
  end,
}
