#!/bin/bash

# ---------------- bashrc ----------------
ln -s "$PWD/.bashrc" "$HOME/.bashrc"

# ---------------- Dependencies ----------------
sudo dnf install -y make && sudo dnf install -y gcc

# ---------------- Alacritty ----------------
mkdir "$HOME/.config/alacritty"
ln -s "$PWD/alacritty.toml" "$HOME/.config/alacritty/alacritty.toml"

# ---------------- Fonts ----------------
curl -OL https://github.com/ryanoasis/nerd-fonts/releases/latest/download/JetBrainsMono.tar.xz
mkdir JetBrainsMono
tar -xf JetBrainsMono.tar.xz -C JetBrainsMono
mkdir -p ~/.local/share/fonts/JetBrainsMono
mv JetBrainsMono/JetBrainsMono*.ttf ~/.local/share/fonts/JetBrainsMono/
fc-cache -v > /dev/null 2>&1
rm -r JetBrainsMono*

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

# ---------------- Tmux ----------------
ln -s "$PWD/tmux.conf" "$HOME/.tmux.conf"

# ---------------- Git ----------------
ln -s "$PWD/.gitconfig" "$HOME/.gitconfig"
