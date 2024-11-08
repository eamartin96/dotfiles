-- nvim configuration file
-- author:. Edgar Martinez

-- basic settings
require('settings')
require('keybinds')
require('appearance')

-- plugins
require('plugins/packer')
require('nvim-tree').setup()
