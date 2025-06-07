-- Set spacebar to prefix key
vim.g.mapleader = " "

-- bind spacebar+cd to vim file manager
vim.keymap.set("n", "<leader>cd", vim.cmd.Ex)

-- Enable auto indentation and smart indentation
vim.opt.autoindent = true
vim.opt.smartindent = true

--vim.opt.signcolumn = "yes:1"
vim.opt.showcmd = true

-- Set yank and paste to work with normal clipboard
vim.opt.clipboard = "unnamedplus"
