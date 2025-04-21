-- ********** telescope-fzf-native ********** 
-- Make telescope use native finder (instead of lua)
require('telescope').load_extension('fzf')


-- ********** nvim-tree ********** 
local function nvim_tree_attach_func(bufnr)
  local api = require("nvim-tree.api")

  local function opts(desc)
    return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end

  -- default mappings
  api.config.mappings.default_on_attach(bufnr)

  -- keymap when buffer is active
  vim.keymap.set('n', '<leader>h',     api.tree.toggle_help,  opts('Help'))
end

require("nvim-tree").setup({
	on_attach = nvim_tree_attach_func,
	update_focused_file = {
		enable = true,
	},
	renderer = {
		icons = {
			web_devicons = {
				file = {enable = false}
			},
		git_placement = "after"
		},
	},
	actions = {
		open_file = {
			quit_on_open = true
		}
	}
})

vim.api.nvim_set_keymap('n', '<leader>e',     ":NvimTreeToggle<cr>", {silent = true, noremap = true}) 


-- ********** lualine ********** 
require('lualine').setup{
	options = {
		disabled_filetypes = { 'NvimTree' }
	},
	sections = {
	    lualine_a = {'mode'},
	    lualine_b = {'branch'},
	    lualine_c = {'filename'},
	    lualine_x = {'filetype'},
	    lualine_y = {},
	    lualine_z = {'location'}
	}
}


-- ********** onedark ********** 
require('onedark').setup {
    style = 'warmer'
}
require('onedark').load()
