#!/bin/bash

# This script creates softlinks to dotfiles stored in /files

current_directory=$(pwd)
echo $current_directory

for file in files/*; do
    ln -s "$current_directory/$file" ~/."$(basename "$file")"
done

