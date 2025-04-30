return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local configs = require("nvim-treesitter.configs")
 
    configs.setup({
      ensure_installed = {
        "c", "cpp", "lua", "vim", "vimdoc", "javascript", "html", "python", "typescript", "rust", "dockerfile", 
      },
      sync_install = false,
      highlight = { enable = true,
	disable = function(lang, buf)
        	local max_filesize = 300 * 1024 -- 300 KB
        	local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
        	if ok and stats and stats.size > max_filesize then
			return true
		end
  	  end,
	},
    })
  end
}
