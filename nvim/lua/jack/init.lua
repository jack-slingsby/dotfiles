vim.g.mapleader = " " -- Set leader key before Lazy

-- Required by nvim-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("jack.lazy_init")
require("jack.set")
require("jack.setup")
require("jack.remap")
require("jack.lsp")
