--Load sub config files
require('config.options')
require('config.keybinds')
require('config.lazy')

-- Set linenumbers on
vim.opt.number = true

-- Set standard indent to 2 spaces
vim.opt.shiftwidth = 2

-- Show cursor line on current line
vim.opt.cursorline = true
