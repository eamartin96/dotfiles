#!/bin/bash

# ---------------- Vim editor ----------------
vim_directory=$PWD/vim

ln -s "$vim_directory/vimrc" "$HOME/.vimrc"
# Create links to themes
mkdir "$HOME/.vim" "$HOME/.vim/colors"
for theme in "$vim_directory/colors"/*; do
    ln -s "$theme" "$HOME/.vim/colors/$(basename "$theme")"
done
# Import Status Line
ln -s "$vim_directory/statusline.vim" "$HOME/.vim/statusline.vim"
