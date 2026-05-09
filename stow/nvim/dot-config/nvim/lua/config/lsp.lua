-- Fix workspace scan not trigerring (https://github.com/folke/lazydev.nvim/issues/136)
vim.lsp.config("lua_ls", {
  settings = {
    Lua = {
      workspace = {
        library = vim.api.nvim_get_runtime_file("", true),
      },
      telemetry = { enable = false },
    },
  },
})

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

vim.lsp.config('cssls', {
  capabilities = capabilities,
})

vim.lsp.config('html', {
  capabilities = capabilities,
})

vim.lsp.config('ts_ls', {
  settings = {
    implicitProjectConfiguration = {
      checkJs = true,
    },
  },
})

vim.lsp.enable('lua_ls')
vim.lsp.enable('emmet_language_server')
vim.lsp.enable('html')
vim.lsp.enable('cssls')
vim.lsp.enable('ts_ls')
