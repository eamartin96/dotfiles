#!/bin/bash

curl -OL https://github.com/ryanoasis/nerd-fonts/releases/latest/download/JetBrainsMono.tar.xz
mkdir JetBrainsMono
tar -xf JetBrainsMono.tar.xz -C JetBrainsMono
mkdir -p ~/.local/share/fonts/JetBrainsMono
mv JetBrainsMono/JetBrainsMono*.ttf ~/.local/share/fonts/JetBrainsMono/
fc-cache -v
rm -r JetBrainsMono*
