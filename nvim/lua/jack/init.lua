vim.g.mapleader = " " -- Set leader key before Lazy
vim.opt.termguicolors = true
vim.opt.scrolloff = 2
vim.opt.tabstop = 2
vim.opt.smarttab = true

-- Required by nvim-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("jack.lazy_init")
require("jack.set")
require("jack.setup")
require("jack.remap")
require("jack.lsp")
