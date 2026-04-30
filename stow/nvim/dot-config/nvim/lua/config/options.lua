-- ~~~~~~~~~~ Indentation ~~~~~~~~~~ 

-- One <Tab> equals this many spaces
vim.opt.tabstop = 2

-- Indent uses this many spaces
vim.opt.shiftwidth = 2

-- Replace typed <Tab> with spaces
vim.opt.expandtab = true

-- ~~~~~~~~~~ Visuals ~~~~~~~~~~ 

-- Keep this many lines visible around cursor vertically
vim.opt.scrolloff = 50

-- Keep this many lines visible around cursor horizontally
vim.opt.sidescrolloff = 10

-- Text wrapping to next line
vim.opt.wrap = false

-- Show line numbers and relative position
vim.opt.number = true
vim.opt.relativenumber = true

-- Enable 24-bit RGB color support for TUI
vim.opt.termguicolors = true

-- Show a global status line (no per-window lines)
vim.opt.laststatus = 3

-- Show dots instead of spaces
vim.opt.list = true
vim.opt.listchars:append({ space = '·' })

-- ~~~~~~~~~~ Searching ~~~~~~~~~~ 

-- Ignore case when searching
vim.opt.ignorecase = true

-- ~~~~~~~~~~ Other ~~~~~~~~~~ 

-- Where new splits are created below and on the right side
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Ask to confirm, instead of error
vim.opt.confirm = true

-- Save yanked/deleted text into system clipboard
vim.opt.clipboard = "unnamedplus"

-- Allow virtual editing in Visual-Block mode
vim.opt.virtualedit = "block"

-- Show a preview of substitute or similar commands in a split
vim.opt.inccommand = "split"
