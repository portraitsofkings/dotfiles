return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  branch = 'master',
  build = ':TSUpdate',
  main = "nvim-treesitter.configs",
  opts = {
    ensure_installed = { "html", "css", "javascript", "regex", "bash" },
    auto_install = true,
    highlight = { enable = true },
    incremental_selection = { enable = true },
    indent = { enable = true },
  }
}
