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

-- Enable lua_ls LSP config provided by nvim-lspconfig
vim.lsp.enable('lua_ls')
