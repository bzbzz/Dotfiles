# Dotfiles
## Informations

My Neovim, Kitty, zsh and Obsidian configurations files

## Setup

```sh
# Creating .config if it does not exist
mkdir -p "$HOME/.config"

mv $HOME/Dotfiles $HOME/dot

# Symlink Neovim config
ln -sfn "dot/nvim" "$HOME/.config/nvim"

# Symlink Kitty config
ln -sfn "dot/kitty/kitty.conf" "$HOME/.config/kitty/kitty.conf"
ln -sfn "~/dot/kitty/flexoki.conf" "$HOME/.config/kitty"

# Symlink zsh config
ln -sfn "dot/.zshrc" "$HOME/.zshrc"

# Symlink tmux config
ln -sfn "~/dot/tmux/.tmux.conf" "~/.tmux.conf"

# Symlink obsidian vimrc and snippets
ln -sfn "dot/obsidian/obsidian.vimrc" "$HOME/obs/Vault/99 - Meta/obsidian.vimrc"
ln -sfn "dot/obsidian/snippets" "$HOME/obs/Vault/.obsidian/snippets"
```
