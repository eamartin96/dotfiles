-- keybind settings
-- author: Edgar Martinez

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- set leader key to SPACE
vim.g.mapleader = " "

-- keybindings
map('n', '<leader>h', ':nohlsearch<CR>', opts) -- clear search highlighting

-- nvim-tree
map('n', '<leader>t', ':NvimTreeToggle<CR>', opts) -- toggle nvim-tree
map('n', '<leader>f', ':NvimTreeFocus<CR>', opts) -- focus nvim-tree

-- nvim-telescope
map('n', '<leader>z', ':Telescope find_files<CR>', opts) -- open file finder

-- vim-floaterm
map('t', '<leader>x', [[<C-\><C-n>]], opts) -- exit terminal mode
map('n', '<leader>r', ':FloatermToggle<CR>', opts) -- toggle terminal
