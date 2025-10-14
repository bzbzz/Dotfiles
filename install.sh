# Creating .config if it does not exist
mkdir -p "$HOME/.config"

mv $HOME/Dotfiles $HOME/dot

# Set prefix variable
prefix="$HOME/dot"

dnf install neovim kitty zsh zoxide bat

# Symlink Neovim config
ln -sfn "$prefix/nvim" "$HOME/.config/nvim"

# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Symlink zsh config
ln -sfn "$prefix/.zshrc" "$HOME/.zshrc"

# zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# zsh-completions
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-completions

# fzf-tab
git clone https://github.com/Aloxaf/fzf-tab ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/fzf-tab

# Install Lazygit
sudo dnf copr enable dejan/lazygit
sudo dnf install lazygit

# Symlink Kitty config
ln -sfn "$prefix/kitty" "$HOME/.config/kitty"


# Symlink tmux config
ln -sfn "$prefix/tmux/.tmux.conf" "~/.tmux.conf"

# Symlink obsidian vimrc and snippets
ln -sfn "$prefix/obsidian/obsidian.vimrc" "$HOME/obs/Vault/99 - Meta/obsidian.vimrc"
ln -sfn "$prefix/obsidian/snippets" "$HOME/obs/Vault/.obsidian/snippets"
