vim.opt.termguicolors = true
require("bufferline").setup{
  options = {
    modified_icon = '',
    indicator = { 
      icon = '',
      style = 'icon'
    },
    color_icons = true,
    close_command = "bdelete! %d"
  }
}
