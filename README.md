# The Collectors (Dotfiles)
This repository contains my personal configuration files (`dotfiles`) to set up my development environment across multiple machines. The configurations are organized and managed using [GNU Stow](https://www.gnu.org/software/stow/), which allows easy symlinking of config files into the appropriate system locations.

## Requirements
Ensure you have the following installed on your system
### Stow
```bash
brew install stow
```
### WezTerm
```bash
brew install --cask wezterm
```
### CLI Tools
```bash
brew install tmux zsh starship spotify_player lazygit neovim lsd lf bat ripgrep zsh-syntax-highlighting
```
### Nerd Fonts (for icons/symbols)
Install a Nerd Font to correctly render icons used by tools like Starship, WezTerm, and lsd. [Download Nerd Fonts](https://www.nerdfonts.com/font-downloads)
Recommended: Hack Nerd Font, FiraCode Nerd Font or JetBrainsMono Nerd Font.
### Desktop Applications (optional)
These are desktop applications I personally use alongside my terminal setup. They’re optional and not required for the dotfiles to work.
```bash
brew install --cask amazon-q gitkraken notion orbstack postman raycast tableplus
```


## Tool List

| Tool | Description |
|------|-------------|
| [WezTerm](https://wezfurlong.org/wezterm/) | A GPU-accelerated terminal emulator with modern features and Lua-based configuration. |
| [tmux](https://github.com/tmux/tmux) | Terminal multiplexer that allows for managing multiple sessions and panes in one window. |
| [Starship](https://starship.rs/) | A fast, customizable, and minimal shell prompt that works with any shell. |
| [spotify-player](https://github.com/aome510/spotify-player) | A terminal-based Spotify client with a clean UI and keyboard-driven interface. |
| [Neovim](https://neovim.io/) | A modern, extensible Vim-based text editor configured with plugins and Lua in this setup. |
| [lsd](https://github.com/lsd-rs/lsd) | A modern replacement for `ls` with icons and better formatting. |
| [lf](https://github.com/gokcehan/lf) | A terminal file manager with vim-like keybindings and preview support. |
| [bat](https://github.com/sharkdp/bat) | A `cat` clone with syntax highlighting and Git integration for viewing files in the terminal. |
| [lazygit](https://github.com/jesseduffield/lazygit) | A simple terminal UI for git commands, making git easier and faster to use. |
| [.zshrc](https://zsh.sourceforge.io/) | Custom Zsh shell configuration file including Starship prompt and syntax highlighting. |


## Theme
All tools are themed using the [Catppuccin](https://github.com/catppuccin) color palette (Mocha variant), providing a consistent pastel tone across:
- Terminal emulator (WezTerm)
- Shell prompt (Starship)
- Text editor (Neovim)
- File tools (bat, lsd, lf, etc.)

## Installation
Clone the repo into your home directory:
```bash
cd ~
git clone https://github.com/Bourbxn/dotfiles.git
```
Use GNU Stow to symlink the configs:
```bash
cd ~/dotfiles
stow .
```
This will create symlinks like:
- `~/.zshrc` → `dotfiles/.zshrc`
- `~/.config/nvim/` → `dotfiles/.config/nvim/`
Reload your shell:
```bash
source ~/.zshrc
```
Launch Neovim (first time only) to trigger plugin installation:
```bash
nvim
```
Launch tmux (first time only) and press `<C-b> + I` to install plugins:
```bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
tmux
```

For more details about the Neovim setup used in this dotfiles, see [BourbxnNvim V2](https://github.com/Bourbxn/bourbxn-nvim-v2)

## Notes
- After installation, reload your shell: source ~/.zshrc
- You can safely edit config files directly inside the dotfiles/ repo
- Some tools (like spotify-player) may require additional API tokens or setup
