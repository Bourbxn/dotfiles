#!/usr/bin/env bash
set -e

echo "🔧 Checking and installing dependencies via Homebrew..."

# Check for Homebrew
if ! command -v brew &>/dev/null; then
    echo "🛠 Homebrew not found. Installing..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Install stow
if ! command -v stow &>/dev/null; then
    echo "📦 Installing GNU Stow..."
    brew install stow
else
    echo "✅ stow is already installed"
fi

# Install wezterm (cask)
if ! brew list --cask | grep -q wezterm; then
    echo "📦 Installing WezTerm..."
    brew install --cask wezterm
else
    echo "✅ wezterm is already installed"
fi

# Install CLI tools
apps=(
    tmux
    zsh
    starship
    spotify_player
    lazygit
    neovim
    lsd
    lf
    bat
    ripgrep
    zsh-syntax-highlighting
)

for app in "${apps[@]}"; do
    if ! brew list | grep -q "^$app\$"; then
        echo "📦 Installing $app..."
        brew install "$app"
    else
        echo "✅ $app is already installed"
    fi
done

# Ask about installing dev starter pack (GUI apps)
echo ""
read -rp "💡 Do you want to install the application dev starter pack? (mongodb-compass, amazon-q, gitkraken, notion, orbstack, postman, raycast, tableplus) (y/N): " install_apps

if [[ "$install_apps" =~ ^[Yy]$ ]]; then
    echo "📦 Installing development applications..."
    cask_apps=(
        mongodb-compass
        amazon-q
        gitkraken
        notion
        orbstack
        postman
        raycast
        tableplus
    )
    for app in "${cask_apps[@]}"; do
        if ! brew list --cask | grep -q "^$app\$"; then
            echo "📥 Installing $app..."
            brew install --cask "$app"
        else
            echo "✅ $app is already installed"
        fi
    done
else
    echo "🚫 Skipping dev starter pack installation"
fi

# Prompt and remove configs
echo ""
echo "⚠️  The following existing configs will be removed:"
configs=(
    "$HOME/.config/spotify-player"
    "$HOME/.config/nvim"
    "$HOME/.config/lsd"
    "$HOME/.config/lf"
    "$HOME/.config/bat"
    "$HOME/.config/tmux"
    "$HOME/.tmux"
    "$HOME/.config/starship.toml"
    "$HOME/.zshrc"
    "$HOME/.config/wezterm"
    "$HOME/dotfiles"
)

for cfg in "${configs[@]}"; do
    if [ -e "$cfg" ]; then
        echo "  - $cfg"
    fi
done

echo ""
read -rp "❓ Do you want to proceed with removing these configs? (y/N): " confirm
if [[ ! "$confirm" =~ ^[Yy]$ ]]; then
    echo "🚫 Installation aborted by user."
    exit 1
fi

echo "🧹 Removing old configs..."
for cfg in "${configs[@]}"; do
    if [ -e "$cfg" ]; then
        echo "🗑 Removing: $cfg"
        rm -rf "$cfg"
    fi
done

# Clone dotfiles
echo "📁 Cloning dotfiles repository..."
cd "$HOME"
git clone https://github.com/Bourbxn/dotfiles.git

# Symlink with stow
echo "🔗 Creating symlinks using stow..."
cd "$HOME/dotfiles"
stow .

# Reload shell config
echo "🔄 Reloading shell configuration..."
if [ -n "$ZSH_VERSION" ]; then
    source ~/.zshrc
elif [ -n "$BASH_VERSION" ]; then
    source ~/.bashrc
fi

# Install Neovim plugins
echo "🧠 Launching Neovim to trigger Lazy plugin installation..."
nvim --headless "+Lazy! sync" +qa || echo "⚠️  Failed to sync Lazy plugins"

# Setup TPM (tmux plugin manager)
echo "🔌 Installing TPM (tmux plugin manager)..."
if [ ! -d ~/.tmux/plugins/tpm ]; then
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
else
    echo "✅ TPM already installed"
fi

# Run tmux plugin installation
echo "🔄 Installing tmux plugins via TPM..."
tmux start-server
tmux new-session -d
tmux run-shell ~/.tmux/plugins/tpm/scripts/install_plugins.sh

echo ""
echo "🎉 Setup complete!"
echo "🚀 Welcome to your dotfiles kingdom — everything is now under your command!"
echo ""
