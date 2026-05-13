vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Briefly highlight yanked text",
  group = vim.api.nvim_create_augroup("yank-highlight", { clear = true }),
  callback = function()
    vim.hl.on_yank()
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  desc = "Highlight git commit message length limits",
  pattern = "gitcommit",
  group = vim.api.nvim_create_augroup("gitcommit-colorcolumn", { clear = true }),
  callback = function()
    vim.opt_local.colorcolumn = "50,72"
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  desc = "Stop comment auto-insertion in css",
  pattern = "css",
  group = vim.api.nvim_create_augroup("css-comments-tweak", { clear = true }),
  callback = function()
    -- Remove middle part of comments to fix universal selector
    vim.opt_local.comments:remove("mb:*")
  end,
})
