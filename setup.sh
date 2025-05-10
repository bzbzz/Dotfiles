#!/bin/bash

set -e  # Exit if any command fails

DOTFILES_DIR="$HOME/Dotfiles"

# Symlink Neovim config
echo "Linking Neovim config..."
mkdir -p "$HOME/.config"
ln -sfn "$DOTFILES_DIR/nvim" "$HOME/.config/nvim"

# Symlink Kitty config
echo "Linking Kitty config..."
mkdir -p "$HOME/.config"
ln -sfn "$DOTFILES_DIR/kitty" "$HOME/.config/kitty"

# Symlink zsh config
echo "Linking .zshrc..."
ln -sfn "$DOTFILES_DIR/.zshrc" "$HOME/.zshrc"

echo "✅ All dotfiles linked!"
