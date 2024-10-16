-- plugins file
-- author: Edgar Martinez

-- use packer to manage plugins
return require('packer').startup(function(use)
  	use 'wbthomason/packer.nvim' -- packer can manage itself

  	-- minimal plugins
	use {
  		'nvim-tree/nvim-tree.lua',
  		requires = { 'nvim-tree/nvim-web-devicons' }
	}
	use {
		'airblade/vim-gitgutter',	-- Git gutter
		config = function()
			require('plugin_configs.gitgutter')
		end
	}
	use {
		'nvim-telescope/telescope.nvim',	-- Fuzzy finder
		requires = { 'nvim-lua/plenary.nvim' }
	}
	use 'voldikss/vim-floaterm'

end)
