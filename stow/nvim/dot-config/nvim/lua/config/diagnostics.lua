vim.diagnostic.config({
    -- Add virtual text on lines with diagnostics
    virtual_text = true,
    -- Set up diagnostic icons
    signs = {
        text = {
            [vim.diagnostic.severity.ERROR] = '',
            [vim.diagnostic.severity.WARN] = '',
            [vim.diagnostic.severity.INFO] = '󰋇',
            [vim.diagnostic.severity.HINT] = '󰌵',
        },
    },
})

