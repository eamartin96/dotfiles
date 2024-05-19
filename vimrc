" Vim configuration file
" Author Edgar Martinez

" ---------------------------------------------------------------------
" Must have options
" These are highly recommended options

" Set 'nocompatible' to word off unexpected things that your distro might
" have made, as well as sanely reset options when re-sourcing .vimrc
set nocompatible

" ---------------------------------------------------------------------
" Features
" These options and commands enable some very useful features in Vim, that no user should have to live without

"Browsing files using Netrw
set nocp
filetype plugin on

" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-identing for each filetype,
" and for plugins that are file type specific
if has ('filetype')
	filetype indent plugin on
endif

" Enable syntax highlighting
if has ('syntax')
	syntax on
endif

" Set the cursor on the last line I was when re-open the file
if has ("autocmd")
	au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" ---------------------------------------------------------------------
" Usability options
"
" These are options that users frequently set in their .vimrc. Some of them
" change Vim's behaviour in ways which deviate from the true Vi way, but
" which are considered to add usability. Which, if any, of these options to
" use is very much a personal preference, but they are harmless.

" Disable the using of arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

"Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" Add numbers to each line on the left-hand side
set number

" Highlight cursor line underneath the cursor horizontally
"set cursorline

" Hightligh cursor line underneath the cursor vertically
"set cursorcolumn

" Set the default color scheme as desert
"colorscheme desert

"Set bacjground compatible with a dark terminal
set background=dark

" Show triling 15spaces in ugly red
highlight Extra15Spaces ctermbg=red guibg=red
match Extra15Spaces /\s\+$/

" Highlight search
set hlsearch

" Highlight search while writting
 set incsearch

" ---------------------------------------------------------------------
" Indentation options
"
" Indentation settings according to personal preference
" Indentation settings for using 4 spaces instead of tabs.
" Do not change 'tabstop' from its default value of 8 with this setup.
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" ---------------------------------------------------------------------
" Markdown Options

syn match markdownIngore "/\v\w_\w"

" ---------------------------------------------------------------------
" Powerline
"set laststatus=2
"
"python3 from powerline.vim import setup as powerline_setup
"python3 powerline_setup()
"python3 del powerline_setup
