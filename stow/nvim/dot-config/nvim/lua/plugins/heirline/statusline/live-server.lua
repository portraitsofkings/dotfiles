return {
  init = function(self)
    local pluginInfo = require("live_server").state.servers
    self.openPorts = 0

    -- Not really needed, but whatever
    self.ports = {}
    for port, _ in pairs(pluginInfo) do
      self.openPorts = self.openPorts + 1
      table.insert(self.ports, port)
    end
  end,
  {
    condition = function(self)
      return self.openPorts > 0
    end,
    {
      provider = " ",
    },
    {
      provider = function(self)
        return " " .. self.openPorts
      end,
    },
  },
}
