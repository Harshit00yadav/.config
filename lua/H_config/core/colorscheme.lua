vim.opt.cursorline = true
vim.opt.termguicolors = true
vim.opt.winblend = 0
vim.opt.wildoptions = 'pum'
vim.opt.pumblend = 5
vim.opt.background = 'dark'

-- Default options:
require('kanagawa').setup({
    compile = false,             -- enable compiling the colorscheme
    undercurl = true,            -- enable undercurls
    commentStyle = { italic = true },
    functionStyle = {},
    keywordStyle = { italic = true},
    statementStyle = { bold = true },
    typeStyle = {},
    transparent = false,         -- do not set background color
    dimInactive = false,         -- dim inactive window `:h hl-NormalNC`
    terminalColors = true,       -- define vim.g.terminal_color_{0,17}
    colors = {                   -- add/modify theme and palette colors
        palette = {
          sumiInk0 = '#000000',
          yellow = '#ffff00',
        },
        theme = { wave = {}, lotus = {}, dragon = {}, all = {}},
    },
    overrides = function(colors) -- add/modify highlights
        return {
          CursorLine = { bg = colors.palette.sumiInk0 },
          CursorLineNr = { bg = vim.fn.mode() == 'n' and '#ffffff' or colors.palette.autumnYellow, fg = colors.palette.sumiInk0 }
        }
    end,
    theme = "dragon",              -- Load "wave" theme when 'background' option is not set
    background = {               -- map the value of 'background' option to a theme
        dark = "dragon",           -- try "dragon" !
        light = "lotus"
    },
})

vim.keymap.set("n", "m", "<Cmd>echo mode()<CR>")
-- setup must be called before loading
vim.cmd("colorscheme kanagawa")
