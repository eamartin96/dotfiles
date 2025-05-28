local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use {
      'nvim-tree/nvim-tree.lua', -- File sidebar tree
      requires = { 'nvim-tree/nvim-web-devicons' },
      config = function()
          require('plugins.plugin_configs.nvim-tree').setup()
      end
  }
  use {
	  'airblade/vim-gitgutter',	-- Git gutter
	  config = function()
	      require('plugins.plugin_configs.gitgutter')
	  end
  }
  use {
      'nvim-telescope/telescope.nvim', -- File finder
      requires = { 'nvim-lua/plenary.nvim' }
  }
  use 'voldikss/vim-floaterm' -- Float terminal
  use {
    "windwp/nvim-autopairs", -- Auto bracet pair
    event = "InsertEnter",
    config = function()
        require("nvim-autopairs").setup {}
    end
  }
  use {
      'xiyaowong/transparent.nvim',
      config = function()
          require("plugins.plugin_configs.transparent")
      end
  }

  -- Themes
  use 'catppuccin/nvim'
  use 'olimorris/onedarkpro.nvim'
end)
