-- nvim basic settings
-- author: Edgar Martinez

local opt = vim.opt
local cmd = vim.cmd
local g = vim.g

-- line numbers
opt.number = true

-- enable syntax highlighting
cmd('syntax on')

-- indentation settings
opt.expandtab = true
opt.shiftwidth = 4
opt.tabstop = 4

-- enable clipboard
opt.clipboard = 'unnamedplus'

-- disable mouse
opt.mouse = ""

-- show trailing whitespaces in ugly red
cmd([[ highlight ExtraWhitespace ctermbg=red guibg=red ]])
cmd([[ match ExtraWhitespace /\s\+$/ ]])

-- set color column
opt.colorcolumn="80"

-- disable editorconfig
g.editorconfig = false

-- open a file in the same line when closed it
vim.api.nvim_create_autocmd("BufReadPost", {
    pattern = {"*"},
    callback = function()
        if vim.fn.line("'\"") > 1 and vim.fn.line("'\"") <= vim.fn.line("$") then
            vim.api.nvim_exec("normal! g'\"",false)
        end
    end
})
