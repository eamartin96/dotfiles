-- vim-gitgutter settings
-- author: Edgar Martinez

-- set gitgutter sign column background to transparent
vim.cmd('highlight SignColumn ctermbg=NONE')

-- set the dealy in milliseconds before updating the signs
vim.g.gitgutter_update_debounce = 10

-- enable live git diffd in the sign column
vim.g.gitgutter_sign_added = ''
vim.g.gitgutter_sign_modified = ''
vim.g.gitgutter_sign_removed = ''

-- set gitgutter signs background to transparent
vim.cmd('highlight GitGutterAdd ctermfg=10 ctermbg=NONE')
vim.cmd('highlight GitGutterChange ctermfg=11 ctermbg=NONE')
vim.cmd('highlight GitGutterDelete ctermfg=9 ctermbg=NONE')
