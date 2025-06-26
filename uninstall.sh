#!/usr/bin/env bash
set -e

echo "🧹 Starting uninstall process..."

# List of apps installed by brew formula
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
    sketchybar
    borders
)

echo "🧹 Uninstalling brew formula apps..."
for app in "${apps[@]}"; do
    if brew list | grep -q "^$app\$"; then
        echo "🗑 Uninstalling $app..."
        brew uninstall --ignore-dependencies --force "$app"
    else
        echo "⚠️ $app not installed, skipping"
    fi
done

echo "🧹 Uninstalling aerospace from tap..."
if brew list | grep -q "^aerospace\$"; then
    brew uninstall --ignore-dependencies --force aerospace || echo "⚠️ Failed to uninstall aerospace"
fi

echo "🧹 Uninstalling brew taps..."
brew untap nikitabobko/tap || echo "⚠️ Tap nikitabobko/tap not found or already untapped"
brew untap FelixKratz/formulae || echo "⚠️ Tap FelixKratz/formulae not found or already untapped"

# List of cask apps installed
cask_apps=(
    wezterm
    font-sketchybar-app-font
    font-hack-nerd-font
    mongodb-compass
    amazon-q
    gitkraken
    notion
    orbstack
    postman
    raycast
    tableplus
)

echo "🧹 Uninstalling brew cask apps..."
for cask_app in "${cask_apps[@]}"; do
    if brew list --cask | grep -q "^$cask_app\$"; then
        echo "🗑 Uninstalling $cask_app..."
        brew uninstall --cask --force "$cask_app"
    else
        echo "⚠️ $cask_app not installed, skipping"
    fi
done

# Remove fonts installed via brew formula (font-sf-pro)
if brew list | grep -q "^font-sf-pro\$"; then
    echo "🗑 Uninstalling font-sf-pro..."
    brew uninstall --ignore-dependencies --force font-sf-pro
else
    echo "⚠️ font-sf-pro not installed, skipping"
fi

# Remove dotfiles configs
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
    "$HOME/.config/starship"
    "$HOME/.config/fish"
    "$HOME/.zshrc"
    "$HOME/.config/wezterm"
    "$HOME/.wezterm.lua"
    "$HOME/dotfiles"
)

echo "🧹 Removing dotfiles configs..."
for cfg in "${configs[@]}"; do
    if [ -e "$cfg" ]; then
        echo "🗑 Removing $cfg"
        rm -rf "$cfg"
    else
        echo "⚠️ $cfg not found, skipping"
    fi
done

echo "🧹 Uninstall TPM (tmux plugin manager)..."
if [ -d ~/.tmux/plugins/tpm ]; then
    rm -rf ~/.tmux/plugins/tpm
    echo "✅ TPM removed"
else
    echo "⚠️ TPM not found"
fi

echo ""
echo "🎉 Uninstall complete! Your system should be clean now."
