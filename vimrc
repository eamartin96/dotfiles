" Vim configuration file
" Author Edgar Martinez

" ---------------------------------------------------------------------
" Must have options
" These are highly recommended options

" Set 'nocompatible' to word off unexpected things that your distro might
" have made, as well as sanely reset options when re-sourcing .vimrc
set nocompatible
" Switch to another buffer even if there are unsaved changes in the current buffer
set hidden

" ---------------------------------------------------------------------
" Features
" These options and commands enable some very useful features in Vim, that no user should have to live without

" Browsing Files using Netrw
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
" These are options that users frequently set in their .vimrc. Some of them
" change Vim's behaviour in ways which deviate from the true Vi way, but
" which are considered to add usability. Which, if any, of these options to
" use is very much a personal preference, but they are harmless.

" Disable the using of arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase
" Add numbers to each line on the left-hand side
set number
" Highlight cursor line underneath the cursor horizontally
"set cursorline
" Hightligh cursor line underneath the cursor vertically
"set cursorcolumn
"Set background compatible with a dark terminal
set background=dark
" Set the git gutter colors
highlight clear SignColumn
highlight GitGutterAdd      guifg=#009900 ctermfg=2
highlight GitGutterChange   guifg=#bbbb00 ctermfg=3
highlight GitGutterDelete   guifg=#ff2222 ctermfg=1
" Show triling 15spaces in ugly red
highlight Extra15Spaces ctermbg=red guibg=red
match Extra15Spaces /\s\+$/
" Highlight search
set hlsearch
" Highlight search while writting
 set incsearch

" ---------------------------------------------------------------------
" Status line options (Removed since using Powerline)
" Format
set laststatus=2

" ---------------------------------------------------------------------
" Indentation options
" Indentation settings according to personal preference
" Indentation settings for using 4 spaces instead of tabs.
" Do not change 'tabstop' from its default value of 8 with this setup.
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" ---------------------------------------------------------------------
" Markdown options
syn match markdownIgnore "/\v\w_\w"

" ---------------------------------------------------------------------
" Plugins
" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

call plug#begin('~/.vim/plugged')

" Git
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

call plug#end()
" ---------------------------------------------------------------------
" Powerline
"let g:powerline_pycmd="py3"
