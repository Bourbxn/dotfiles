#!/usr/bin/env bash
set -e

echo "🔧 Checking for Homebrew..."

# Check for Homebrew, install if missing
if ! command -v brew &>/dev/null; then
    echo "🛠 Homebrew not found. Installing..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    
    # Add Homebrew to PATH after install
    echo >> "$HOME/.zprofile"
    echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> "$HOME/.zprofile"
    eval "$(/opt/homebrew/bin/brew shellenv)"
else
    echo "✅ Homebrew is already installed"
fi


echo "🔧 Installing gum..."
if ! command -v gum &>/dev/null; then
    brew install gum
else
    echo "🔄 Upgrading gum..."
    brew upgrade gum
fi

echo "🔧 Checking and installing dependencies via Homebrew..."

# Install stow
if ! command -v stow &>/dev/null; then
    echo "📦 Installing GNU Stow..."
    brew install stow
else
    echo "🔄 Upgrading stow..."
    brew upgrade stow
fi

# Install wezterm (cask)
if ! brew list --cask | grep -q wezterm; then
    echo "📦 Installing WezTerm..."
    brew install --cask wezterm
else
    echo "🔄 Upgrading wezterm..."
    brew upgrade --cask wezterm
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
    btop
    fzf
    fnm
    pyenv
    thefuck
    zoxide
    tlrc
)

for app in "${apps[@]}"; do
    if ! brew list | grep -q "^$app\$"; then
        echo "📦 Installing $app..."
        brew install "$app"
    else
        echo "🔄 Upgrading $app..."
        brew upgrade "$app"
    fi
done

# Install aerospace if not installed, else upgrade
if ! brew list | grep -q "^sketchybar\$"; then
    echo "📦 Installing aerospace..."
    brew install nikitabobko/tap/aerospace
else
    echo "🔄 Upgrading aerospace..."
    brew upgrade nikitabobko/tap/aerospace
fi


# Tap repository for sketchybar
brew tap FelixKratz/formulae

# Install sketchybar if not installed, else upgrade
if ! brew list | grep -q "^sketchybar\$"; then
    echo "📦 Installing sketchybar..."
    brew install sketchybar
else
    echo "🔄 Upgrading sketchybar..."
    brew upgrade sketchybar
fi

# Install fonts for sketchybar
echo "📦 Installing fonts for sketchybar..."
if ! brew list --cask | grep -q "^font-sketchybar-app-font\$"; then
    echo "📦 Installing font-sketchybar-app-font..."
    brew install --cask font-sketchybar-app-font
else
    echo "🔄 Upgrading font-sketchybar-app-font..."
    brew upgrade --cask font-sketchybar-app-font
fi

if ! brew list | grep -q "^font-sf-pro\$"; then
    echo "📦 Installing font-sf-pro..."
    brew install font-sf-pro
else
    echo "🔄 Upgrading font-sf-pro..."
    brew upgrade font-sf-pro
fi

# Install janky borders if not installed, else upgrade
if ! brew list | grep -q "^borders\$"; then
    echo "📦 Installing borders..."
    brew install borders
else
    echo "🔄 Upgrading borders..."
    brew upgrade borders
fi

# Install nerd font
echo ""
echo "🎨 Installing Hack Nerd Font..."

font="font-hack-nerd-font"

if ! brew list --cask | grep -q "^$font\$"; then
    echo "📥 Installing $font..."
    brew install --cask "$font"
else
    echo "🔄 Upgrading $font..."
    brew upgrade --cask "$font"
fi


# Ask about installing dev starter pack (GUI apps) using gum
echo ""
if gum confirm "💡 Do you want to install the application dev starter pack? (mongodb-compass, amazon-q, gitkraken, notion, orbstack, postman, raycast, tableplus)"; then
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
            echo "🔄 Upgrading $app..."
            brew upgrade --cask "$app"
        fi
    done
else
    echo "🚫 Skipping dev starter pack installation"
fi

# Prompt and remove configs with gum
echo ""
echo "⚠️  The following existing configs will be removed:"
configs=(
    "$HOME/.config/spotify-player"
    "$HOME/.config/nvim"
    "$HOME/.local/share/nvim"
    "$HOME/.cache/nvim"
    "$HOME/.config/lsd"
    "$HOME/.config/lf"
    "$HOME/.config/bat"
    "$HOME/.config/aerospace"
    "$HOME/.config/sketchybar"
    "$HOME/.config/tmux"
    "$HOME/.tmux"
    "$HOME/.config/starship.toml"
    "$HOME/.config/fish"
    "$HOME/.zshrc"
    "$HOME/.config/wezterm"
    "$HOME/.wezterm.lua"
    "$HOME/dotfiles
")

for cfg in "${configs[@]}"; do
    if [ -e "$cfg" ]; then
        echo "  - $cfg"
    fi
done

echo ""
if ! gum confirm "❓ Do you want to proceed with removing these configs?"; then
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
git clone -b v2.1.3 https://github.com/catppuccin/tmux.git ~/.config/tmux/plugins/catppuccin/tmux
tmux start-server
tmux new-session -d
tmux run-shell ~/.tmux/plugins/tpm/scripts/install_plugins.sh

# Build bat
echo "🎨 Rebuilding bat theme cache to include Catppuccin Mocha theme..."
bat cache --build

echo ""
echo "🎉 Setup complete!"
echo "🚀 Welcome to your Dev Starter Pack — everything is now under your command!"
echo ""
