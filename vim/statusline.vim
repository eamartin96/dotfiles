set statusline=

set statusline+=\[%{CurrentMode()}\]   " Current mode
set statusline+=\                      " A space
set statusline+=%f                     " Full file path, at most 40 characters
set statusline+=\                      " A space
set statusline+=%y                     " Filetype
set statusline+=\                      " A space
set statusline+=%m                     " Modified flag [+]
set statusline+=\                      " A space

set statusline+=%=                     " Split the left and right sides

set statusline+=%l                     " Line number
set statusline+=\:                     " A space
set statusline+=%v                     " Column number
set statusline+=\/                     " Column number
set statusline+=%{LinePercent()}       " Total number of lines

" ------------------- Custom Functions -------------------
" -- Show Line Percentage
function! LinePercent()
    return line('.') * 100 / line('$') . '%'
endfunc

" -- Function to convert Vim mode to human-readable format
function! CurrentMode()
    let l:mode_map = {
        \ 'n' : 'NORMAL',
        \ 'i' : 'INSERT',
        \ 'R' : 'REPLACE',
        \ 'v' : 'VISUAL',
        \ 'V' : 'VISUAL LINE',
        \ "\<C-v>" : 'VISUAL BLOCK',
        \ 'c' : 'COMMAND',
        \ 's' : 'SELECT',
        \ 'S' : 'SLECT LINE',
        \ "\<C-s>" : 'SELECT BLOCK',
        \ 't' : 'TERMINAL'
        \ }
    return mode() ==# 'v' ? 'VISUAL' : get(l:mode_map, mode(), 'UNKNOWN')
endfunc
