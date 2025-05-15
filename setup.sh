#!/bin/bash

set -e  # Exit if any command fails

DOTFILES_DIR="$HOME/dot"

# Creating .config if it does not exist
mkdir -p "$HOME/.config"

# Symlink Neovim config
echo "Linking Neovim config..."
ln -sfn "$DOTFILES_DIR/nvim" "$HOME/.config/nvim"

# Symlink Kitty config
echo "Linking Kitty config..."
ln -sfn "$DOTFILES_DIR/kitty/kitty.conf" "$HOME/.config/kitty/kitty.conf"

# Symlink zsh config
echo "Linking .zshrc..."
ln -sfn "$DOTFILES_DIR/.zshrc" "$HOME/.zshrc"

echo "✅ All dotfiles linked!"
