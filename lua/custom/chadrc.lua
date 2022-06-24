local M = {}

M.ui = {
	theme = "gatekeeper",
	statusline = {
    	separator_style = "block"
	}
}

M.mappings = require "custom.mappings"
M.plugins = {
	override = {
		   [ 'NvChad/nvterm' ] = {
			   behavior = {
				   auto_insert = false
			   }
		   },
		   [ 'kyazdani42/nvim-tree.lua' ] = {
			   view = {
	  				preserve_window_proportions = true
			   },
			   actions = {
				  open_file = {
					 resize_window = false,
				  },
			   },
		   }
	},
	remove = { 'folke/which-key.nvim' },
	user = require "custom.plugins",
	options = {
	  lspconfig = {
		 setup_lspconf = "custom.plugins.lspconfig",
	  },
	},
}

return M
