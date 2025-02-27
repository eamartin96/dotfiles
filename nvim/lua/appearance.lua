-- nvim appearance settings
-- author: Edgar Martinez
--
local cmd = vim.cmd
local api = vim.api

-- default colorscheme
cmd([[ colorscheme onedark ]])

-- transparent background
cmd([[ hi Normal guibg=NONE ctermbg=NONE ]])

-- make LineNr (line numbers) transparent
cmd('highlight LineNr ctermbg=NONE guibg=NONE')

-- make CursorLineNr (current line number) transparent
cmd('highlight CursorLineNr ctermbg=NONE guibg=NONE')
