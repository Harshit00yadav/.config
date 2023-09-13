local opt = vim.opt --for conciseness

--line numbers
opt.number = true
opt.relativenumber = true

-- tabs & indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true
opt.smartindent = true
opt.breakindent = true
opt.smarttab = true

-- line wrapping
opt.wrap = false

-- disabling search highlight
opt.hlsearch = false

-- scroll off
opt.scrolloff = 8

-- search settings
opt.ignorecase = true
opt.smartcase = true

-- appearance
opt.title = true
opt.incsearch = true
opt.showmode = false

-- backspace
opt.backspace = "indent,eol,start"

-- clipboard
opt.clipboard:prepend {"unnamed", "unnamedplus"}

-- split windows
opt.splitright = true
opt.splitbelow = true

opt.laststatus= 3

opt.iskeyword:append("-")

