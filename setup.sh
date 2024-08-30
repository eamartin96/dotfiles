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

# ---------------- Fastfetch ----------------
mkdir ~/.config/fastfetch
ln -s "$PWD/fastfetch/config.jsonc" "$HOME/.config/fastfetch/config.jsonc"

# ---------------- Vim editor ----------------
vim_directory=$PWD/vim
# Create .vim directory
mkdir "$HOME/.vim"

ln -s "$vim_directory/vimrc" "$HOME/.vimrc"
# Create links to themes
mkdir "$HOME/.vim/colors"
for theme in "$vim_directory/colors"/*; do
    ln -s "$theme" "$HOME/.vim/colors/$(basename "$theme")"
done
# Import Status Line
ln -s "$vim_directory/statusline.vim" "$HOME/.vim/statusline.vim"
# Create lins to abbreviations
mkdir "$HOME/.vim/abbreviations"
for file in "$vim_directory/abbreviations"/*; do
    ln -s "$file" "$HOME/.vim/abbreviations/$(basename "$file")"
done

# ---------------- Tmux ----------------
ln -s "$PWD/tmux.conf" "$HOME/.tmux.conf"

# ---------------- Git ----------------
ln -s "$PWD/.gitconfig" "$HOME/.gitconfig"

# ---------------- Complements ----------------
# colorls
sudo dnf install -y ruby && sudo dnf install -y ruby-devel # Install Ruby
gem install colorls

# fastfetch
sudo dnf install -y fastfetch

# ---------------- Init ----------------
clear
fastfetch
