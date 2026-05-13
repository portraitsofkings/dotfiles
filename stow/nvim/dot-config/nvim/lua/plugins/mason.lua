return {
  "mason-org/mason-lspconfig.nvim",
  dependencies = {
    { "mason-org/mason.nvim", config = true },
    "neovim/nvim-lspconfig",
  },
  opts = {
    ensure_installed = { "html", "cssls", "ts_ls", "lua_ls", "emmet_language_server", "jsonls" },
  },
}
