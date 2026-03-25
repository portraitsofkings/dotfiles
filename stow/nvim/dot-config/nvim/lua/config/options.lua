-- ordered as in :options

-- ####################
-- 2 moving around, searching and patterns

-- Ignore case when searching
vim.opt.ignorecase = true

-- ####################
-- 4 displaying text
--

-- Keep this many lines visible around cursor
vim.opt.scrolloff = 100

-- Disable text wrapping to next line
vim.opt.wrap = false

-- Show line numbers and relative position
vim.opt.number = true
vim.opt.relativenumber = true

-- ####################
-- 5 syntax, highlighting and spelling

-- Enable 24-bit RGB color support for TUI
vim.opt.termguicolors = true

-- ####################
-- 6 multiple windows

-- Where new splits are created below and on the right side
vim.opt.splitbelow = true
vim.opt.splitright = true

-- ####################
-- 10 messages and info

vim.opt.confirm = true

-- ####################
-- 11 selecting text

vim.opt.clipboard = "unnamedplus"

-- ####################
-- 13 tabs and indenting

-- One <Tab> equals this many spaces
vim.opt.tabstop = 4

-- Indent uses this many spaces
vim.opt.shiftwidth = 4

-- Replace typed <Tab> with spaces
vim.opt.expandtab = true

-- ####################
-- 24 various

-- Allow virtual editing in Visual-Block mode
vim.opt.virtualedit = "block"

-- ####################
-- ?? unlisted

-- Show a preview of substitute or similar commands in a split
vim.opt.inccommand = "split"
