vim.api.nvim_set_keymap('n', '<c-k>',     ":wincmd k<cr>", {silent = true, noremap = true})

vim.api.nvim_set_keymap('n', '<c-j>',     ":wincmd j<cr>", {silent = true, noremap = true})
vim.api.nvim_set_keymap('n', '<c-h>',     ":wincmd h<cr>", {silent = true, noremap = true})
vim.api.nvim_set_keymap('n', '<c-l>',     ":wincmd l<cr>", {silent = true, noremap = true})

-- ********** telescope ********** 
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>fg', builtin.git_files, { desc = 'Telescope files under git' })
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fl', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })

-- ********** telescope-fzf-native ********** 
require('telescope').load_extension('fzf')

-- ********** nvim-tree ********** 
local function my_on_attach(bufnr)
  local api = require("nvim-tree.api")

  local function opts(desc)
    return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end

  -- default mappings
  api.config.mappings.default_on_attach(bufnr)

  -- custom mappings
  vim.keymap.set('n', '<leader>h',     api.tree.toggle_help,  opts('Help'))
end

require("nvim-tree").setup({
  on_attach = my_on_attach,
})

vim.api.nvim_set_keymap('n', '<leader>e',     ":NvimTreeToggle<cr>", {silent = true, noremap = true}) 

-- ********** lualine ********** 
require('lualine').setup()

-- ********** toggleterm ********** 
vim.api.nvim_set_keymap('n', '<leader>tt',     ":ToggleTerm direction=float<cr>", {silent = true, noremap = true}) 
vim.api.nvim_set_keymap('n', '<leader>th',     ":ToggleTerm direction=horizontal<cr>", {silent = true, noremap = true}) 

function _G.set_terminal_keymaps()
  local opts = {buffer = 0}
  vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
--  vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
  vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
  vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
  vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
--  vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], opts)
end
vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')

-- ********** onedark ********** 
require('onedark').setup {
    style = 'warmer'
}
require('onedark').load()

