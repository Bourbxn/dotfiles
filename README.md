# Dev Starter Pack (Dotfiles)
This repository contains my personal configuration files (`dotfiles`) to set up my development environment across multiple machines. The configurations are organized and managed using [GNU Stow](https://www.gnu.org/software/stow/), which allows easy symlinking of config files into the appropriate system locations. 

![image](https://github.com/user-attachments/assets/4701ed86-d000-43c3-a155-e4f4712d2ea0)


## Requirements
Ensure you have the following installed on your system <br><br>
**NOTE:** If you prefer not to install them manually, see [Auto Installation](#auto-installation).
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
brew install tmux zsh starship spotify_player lazygit neovim lsd lf bat ripgrep zsh-syntax-highlighting btop fzf fnm pyenv thefuck
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
| [zsh](https://zsh.sourceforge.io/) | A powerful and extensible shell with custom prompt (Starship), completions, and syntax highlighting. |
| [tmux](https://github.com/tmux/tmux) | Terminal multiplexer that allows for managing multiple sessions and panes in one window. |
| [Starship](https://starship.rs/) | A fast, customizable, and minimal shell prompt that works with any shell. |
| [spotify-player](https://github.com/aome510/spotify-player) | A terminal-based Spotify client with a clean UI and keyboard-driven interface. |
| [Neovim](https://neovim.io/) | A modern, extensible Vim-based text editor configured with plugins and Lua in this setup. |
| [lsd](https://github.com/lsd-rs/lsd) | A modern replacement for `ls` with icons and better formatting. |
| [lf](https://github.com/gokcehan/lf) | A terminal file manager with vim-like keybindings and preview support. |
| [bat](https://github.com/sharkdp/bat) | A `cat` clone with syntax highlighting and Git integration for viewing files in the terminal. |
| [lazygit](https://github.com/jesseduffield/lazygit) | A simple terminal UI for git commands, making git easier and faster to use. |
| [fzf](https://github.com/junegunn/fzf) | A command-line fuzzy finder that helps you search and open files, history, processes, and more efficiently. |
| [btop](https://github.com/aristocratos/btop) | A modern and visually appealing resource monitor for the terminal with mouse support. |
| [thefuck](https://github.com/nvbn/thefuck) | A smart command-line tool that corrects your previous console command when you make a mistake. |

## Theme
All tools are themed using the [Catppuccin](https://github.com/catppuccin) color palette (Mocha variant), providing a consistent pastel tone across:
- Terminal emulator (WezTerm)
- Shell prompt (Starship)
- Text editor (Neovim)
- File tools (bat, lsd, lf, etc.)

## Installation
### Auto Installation
Run the install script directly (no need to clone):
```bash
bash <(curl -s https://raw.githubusercontent.com/Bourbxn/dotfiles/master/install.sh)
```

### Manual Installation
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
For more details about the Neovim setup used in this dotfiles, see [BourbxnNvim V2](https://github.com/Bourbxn/bourbxn-nvim-v2)

Launch tmux (first time only) and press `<C-b> + I` to install plugins:
```bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
tmux
```
### Optional Setup
#### FZF Key bindings
To enable useful keybindings for FZF (like reverse search in terminal), run:
```
$(brew --prefix)/opt/fzf/install
```






## Notes
- After installation, reload your shell: source ~/.zshrc
- You can safely edit config files directly inside the dotfiles/ repo
- Some tools (like spotify-player) may require additional API tokens or setup
