#!/bin/bash

# ---------------- bashrc ----------------
ln -s "$PWD/.bashrc" "$HOME/.bashrc"

# ---------------- Dependencies ----------------
sudo dnf install -y make && sudo dnf install -y gcc
sudo dnf install -y ruby && sudo dnf install -y ruby-devel # Install Ruby

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
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
ln -s "$PWD/tmux.conf" "$HOME/.tmux.conf"

# ---------------- Git ----------------
ln -s "$PWD/.gitconfig" "$HOME/.gitconfig"

# ---------------- Complements ----------------
# colorls
mkdir -p ~/Desktop/.gem/colorls
GEM_HOME=$HOME/Desktop/.gem
gem install colorls --install-dir $GEM_HOME/colors

# fastfetch
sudo dnf install -y fastfetch

# bat
sudo dnf install -y bat
# ---------------- Init ----------------
clear
fastfetch
