return {
  "WhoIsSethDaniel/mason-tool-installer.nvim",
  dependencies = {
    { "mason-org/mason.nvim", config = true },
  },
  opts = {
    ensure_installed = { "stylua", "prettier", "prettierd" },
  },
}
