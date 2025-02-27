-- nvim appearance settings
-- author: Edgar Martinez
--
local cmd = vim.cmd
local api = vim.api

-- default colorscheme
cmd([[ colorscheme onedark ]])

-- transparent background
cmd([[ hi normal guibg=NONE ]])
