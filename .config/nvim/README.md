<h1 align="center">BourbxnNvim V2</h1>

<div align="center">
	<a href="#showcase">Showcase</a>
  <span> • </span>
    	<a href="#plugins-list">Plugins List</a>
   <span> • </span>
	<a href="#install">Install</a>
   <span> • </span>
	<a href="#configure">Configure</a>
   <span> • </span>
	<a href="#keymaps">Keymaps</a>
     <span> • </span>
	<a href="#contributors">Contributors</a>
  <p></p>
</div>

**NOTICE** : This is the second version of my Neovim configuration. It's been fully restructured and now uses lazy.nvim as the plugin manager for faster and more efficient performance.
You can install, customize, and extend this configuration as much as you like. It's intended to serve as a clean and modern reference setup for new Neovim users.Vim is better na kub.

## Showcase

![image](https://github.com/user-attachments/assets/d4b0c97c-51e4-4637-88c4-cbd6a4fc7a95)
![image](https://github.com/user-attachments/assets/aa83d1bc-3c5f-46f4-bbd1-2af4e245f2a5)
![image](https://github.com/user-attachments/assets/94782ef0-9b36-4708-b3f3-b35f321cba68)
![image](https://github.com/user-attachments/assets/6205c669-33e3-4239-9dfe-7faaccdee46d)


<br>

## Plugins List

| Plugin                                                                                    | Description                                                      |
| ----------------------------------------------------------------------------------------- | ---------------------------------------------------------------- |
| [bufferline.nvim](https://github.com/akinsho/bufferline.nvim)                             | Buffer/tab line                                                  |
| [catppuccin](https://github.com/catppuccin/nvim)                                          | Theme/colorscheme                                                |
| [cmp-buffer](https://github.com/hrsh7th/cmp-buffer)                                       | Completion source (buffer)                                       |
| [cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)                                   | LSP source for nvim-cmp                                          |
| [cmp-path](https://github.com/hrsh7th/cmp-path)                                           | Completion source (filesystem paths)                             |
| [cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip)                                | LuaSnip source for nvim-cmp                                      |
| [dashboard-nvim](https://github.com/glepnir/dashboard-nvim)                               | Neovim start screen                                              |
| [fidget.nvim](https://github.com/j-hui/fidget.nvim)                                       | LSP progress UI                                                  |
| [friendly-snippets](https://github.com/rafamadriz/friendly-snippets)                      | Ready-to-use snippets                                            |
| [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)                               | Git signs in gutter                                              |
| [image.nvim](https://github.com/3rd/image.nvim)                                           | Render images in Neovim                                          |
| [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)           | Indentation guides                                               |
| [lazy.nvim](https://github.com/folke/lazy.nvim)                                           | Plugin manager                                                   |
| [lazygit.nvim](https://github.com/kdheepak/lazygit.nvim)                                  | Launch lazygit inside Neovim                                     |
| [leap.nvim](https://github.com/ggandor/leap.nvim)                                         | Motion/navigation plugin                                         |
| [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)                              | Status line                                                      |
| [LuaSnip](https://github.com/L3MON4D3/LuaSnip)                                            | Snippet engine                                                   |
| [mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim)              | Mason LSP bridge                                                 |
| [mason-null-ls.nvim](https://github.com/jay-babu/mason-null-ls.nvim)                      | Mason source manager for null-ls                                 |
| [mason-tool-installer.nvim](https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim) | Auto installer for Mason tools                                   |
| [mason.nvim](https://github.com/williamboman/mason.nvim)                                  | LSP/DAP server installer                                         |
| [multicursor.nvim](https://github.com/smoka7/multicursors.nvim)                           | Multi-cursor support                                             |
| [neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim)                           | File explorer                                                    |
| [neoscroll.nvim](https://github.com/karb94/neoscroll.nvim)                                | Smooth scrolling                                                 |
| [noice.nvim](https://github.com/folke/noice.nvim)                                         | Modern notification & UI                                         |
| [none-ls-extras.nvim](https://github.com/nvimtools/none-ls-extras.nvim)                   | Extra sources for none-ls                                        |
| [none-ls.nvim](https://github.com/nvimtools/none-ls.nvim)                                 | Linter/formatter engine                                          |
| [nui.nvim](https://github.com/MunifTanjim/nui.nvim)                                       | UI component lib                                                 |
| [nvim-autopairs](https://github.com/windwp/nvim-autopairs)                                | Auto close brackets/quotes                                       |
| [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)                                           | Autocompletion engine                                            |
| [nvim-colorizer.lua](https://github.com/norcalli/nvim-colorizer.lua)                      | Color codes preview                                              |
| [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)                                | LSP setup                                                        |
| [nvim-notify](https://github.com/rcarriga/nvim-notify)                                    | Fancy notifications                                              |
| [nvim-surround](https://github.com/kylechui/nvim-surround)                                | Add/change/delete surrounding text                               |
| [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)                     | Syntax highlighting                                              |
| [nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons)                       | File icons                                                       |
| [nvim-window-picker](https://github.com/s1n7ax/nvim-window-picker)                        | Easy window switching                                            |
| [plenary.nvim](https://github.com/nvim-lua/plenary.nvim)                                  | Lua helper library                                               |
| [render-markdown.nvim](https://github.com/MeanderingProgrammer/markdown.nvim)             | Markdown rendering                                               |
| [smear-cursor.nvim](https://github.com/kevinhwang91/smear.nvim)                           | Cursor trail                                                     |
| [telescope-fzf-native.nvim](https://github.com/nvim-telescope/telescope-fzf-native.nvim)  | Native FZF sorter for Telescope                                  |
| [telescope-ui-select.nvim](https://github.com/nvim-telescope/telescope-ui-select.nvim)    | UI picker for Telescope                                          |
| [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)                        | Fuzzy finder                                                     |
| [todo-comments.nvim](https://github.com/folke/todo-comments.nvim)                         | Highlight and manage TODOs                                       |
| [vim-bbye](https://github.com/moll/vim-bbye)                                              | Buffer closing without closing window                            |
| [vim-fugitive](https://github.com/tpope/vim-fugitive)                                     | Git integration                                                  |
| [vim-rhubarb](https://github.com/tpope/vim-rhubarb)                                       | GitHub extension for fugitive                                    |
| [vim-sleuth](https://github.com/tpope/vim-sleuth)                                         | Auto-detect indentation                                          |
| [vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator)                   | Navigate tmux splits from Neovim                                 |
| [which-key.nvim](https://github.com/folke/which-key.nvim)                                 | Keybinding helper                                                |
| [hererocks](https://github.com/luarocks/hererocks)                                        | Python environment (required for some LSPs)                      |
| [trouble.nvim](https://github.com/folke/trouble.nvim)                                     | LSP diagnostics panel, bound to `<leader>dX`, `<leader>cl`, etc. |

<br>

## Install

#### 1. Install Neovim

MacOS/Linux

```bash
brew install neovim ripgrep
```

Windows

```bash
scoop install neovim
```

#### 2. Install BourbxnVim

MacOS/Linux

```bash
git clone https://github.com/Bourbxn/bourbxn-nvim-v2.git ~/.config/nvim
```

Windows

```bash
git clone https://github.com/Bourbxn/bourbxn-nvim-v2.git $HOME\AppData\Local\nvim
```

## Uninstall

MacOS/Linux

```bash
rm -rf ~/.config/nvim
rm -rf ~/.local/share/nvim
rm -rf ~/.cache/nvim
```

Windows

```bash
rd -r ~\AppData\Local\nvim
rd -r ~\AppData\Local\nvim-data
```

<br>

## Configure

### Add Plugins

#### Adding Simple Plugins (Minimal or No Config)

For plugins that are easy to use and require little to no configuration (e.g., `nvim-colorizer.lua`, `todo-comments.nvim`), add them to the file `/nvim/lua/plugins/misc.lua` and restart neovim.

##### Example `misc.lua`:

```lua
return {
  -- ...
  {
    'kylechui/nvim-surround',
    version = '^3.0.0',
    event = 'VeryLazy',
    config = function()
      require('nvim-surround').setup {
        -- Optional configuration here or leave empty for defaults
      }
    end,
  },

  -- ### Add new plugins here ###
}
```

#### Adding Complex Plugins (Require Extensive Configuration)

1. Create a new Lua file named after the plugin inside `/nvim/lua/plugins/<plugin-name>.lua`
2. Example plugin config file (<plugin-name>.lua):

```lua
return {
  'author/plugin-name',
  config = function()
    -- Detailed plugin configuration here
  end,
}
```

3. Then, open your main Neovim config file `/nvim/init.lua`
4. Add the new plugin module inside the lazy setup call:

```lua
require('lazy').setup {
  -- Other plugins...
  require('plugins.smear-cursor'),
  require('plugins.trouble'),
  -- ### Import new plugins here ###
}
```

5. Restart neovim

### Remove Plugins

1. Delete or comment out the plugin from:
   - `~/.config/nvim/lua/plugins/misc.lua`
   - or `plugins/<plugin-name>.lua`
2. Remove its import from `init.lua` if you used `require('plugins.plugin-name')`.
3. Restart neovim

### Configure Keymaps

Configure keymaps at `/nvim/lua/core/keymaps.lua` (Built-in keymaps) and `/nvim/lua/core/plugins/<plugin>` (Plugin keymaps)

#### Configure Mapleader

Mapleader is a first key to start using keymaps. Keymaps should use mapleader because keymaps shortkey will not cover default vim shortkey.
Normally neovim user used spacebar as mapleader.

```bash
vim.g.mapleader = "<mapleader>"
```

#### Configure Keymaps

`[mode]` has 3 modes normal mode`n`, insert mode`i` and visual mode`v` <br>
`[keys]` can add many keys on keyboard ex. `"<leader>ee"` <br>
`[command]` can add neovim command ex. `"<cmd>NvimTreeToggle<cr>"` <br>

```bash
vim.g.mapleader = " "

local keymap = vim.keymap
local opts = { buffer = 0 }
...
keymap.set("[mode]", "<leader>[keys]", "<cmd>[command]<cr>")
```

<br>

## Default Keymaps

### Built-in keymaps

| Mode | Key                   | Action Description                             |
| ---- | --------------------- | ---------------------------------------------- |
| `i`  | `jk`                  | Exit insert mode                               |
| `n`  | `<C-s>`               | Save file (`:w`)                               |
| `n`  | `<leader>sn`          | Save file without formatting (`:noautocmd w`)  |
| `n`  | `<C-q>`               | Quit file (`:q`)                               |
| `n`  | `x`                   | Delete character without copying               |
| `n`  | `<C-d>` / `<C-u>`     | Scroll down/up and center screen               |
| `n`  | `n` / `N`             | Find next/prev search result and center screen |
| `n`  | `<Up>/<Down>`         | Resize window height                           |
| `n`  | `<Left>/<Right>`      | Resize window width                            |
| `n`  | `<Tab>` / `<S-Tab>`   | Switch to next/previous buffer                 |
| `n`  | `<leader>x`           | Close buffer (`:Bdelete`)                      |
| `n`  | `<leader>b`           | New empty buffer (`:enew`)                     |
| `n`  | `<leader>v`           | Vertical split (`<C-w>v`)                      |
| `n`  | `<leader>h`           | Horizontal split (`<C-w>s`)                    |
| `n`  | `<leader>se`          | Equalize split sizes (`<C-w>=`)                |
| `n`  | `<leader>xs`          | Close current split window (`:close`)          |
| `n`  | `<leader>pk/pj/ph/pl` | Move between splits (up/down/left/right)       |
| `n`  | `<leader>to`          | Open new tab (`:tabnew`)                       |
| `n`  | `<leader>tx`          | Close current tab (`:tabclose`)                |
| `n`  | `<leader>tn`/`tp`     | Go to next/previous tab                        |
| `n`  | `<leader>lw`          | Toggle line wrap                               |
| `v`  | `<` / `>`             | Stay in indent mode while shifting             |
| `v`  | `p`                   | Paste without overwriting the yank register    |
| `n`  | `[d` / `]d`           | Go to previous/next diagnostic                 |
| `n`  | `<leader>d`           | Show diagnostic in floating window             |
| `n`  | `<leader>q`           | Open diagnostic location list                  |
| `v`  | `J/K`                 | Move lines up/down                             |
| `n`  | `<leader>nh`          | Clear search highlight                         |

### Plugins keymaps

| Mode     | Key                | Action Description                      | Plugin             |
| -------- | ------------------ | --------------------------------------- | ------------------ |
| `i`, `s` | `<Tab>`            | Select next item or expand snippet      | nvim-cmp + LuaSnip |
| `i`, `s` | `<S-Tab>`          | Select previous item or jump back       | nvim-cmp + LuaSnip |
| `i`, `s` | `<C-l>`            | Jump to next snippet placeholder        | LuaSnip            |
| `i`, `s` | `<C-h>`            | Jump to previous snippet placeholder    | LuaSnip            |
| `i`      | `<C-n>`            | Select next completion item             | nvim-cmp           |
| `i`      | `<C-p>`            | Select previous completion item         | nvim-cmp           |
| `i`      | `<C-b>`            | Scroll completion docs up               | nvim-cmp           |
| `i`      | `<C-f>`            | Scroll completion docs down             | nvim-cmp           |
| `i`      | `<C-y>`            | Confirm completion item                 | nvim-cmp           |
| `i`      | `<C-Space>`        | Trigger completion manually             | nvim-cmp           |
| `n`      | `<leader>gg`       | Open LazyGit                            | lazygit.nvim       |
| `n`      | `gd`               | Goto LSP definition                     | telescope.nvim     |
| `n`      | `gr`               | Find references                         | telescope.nvim     |
| `n`      | `gI`               | Goto implementation                     | telescope.nvim     |
| `n`      | `gD`               | Goto declaration                        | vim.lsp            |
| `n`      | `<leader>D`        | Type definition                         | telescope.nvim     |
| `n`      | `<leader>ds`       | Document symbols                        | telescope.nvim     |
| `n`      | `<leader>ws`       | Workspace symbols                       | telescope.nvim     |
| `n`      | `<leader>rn`       | Rename symbol                           | vim.lsp            |
| `n,x`    | `<leader>ca`       | Code action                             | vim.lsp            |
| `n`      | `<leader>sh`       | Search help                             | telescope.nvim     |
| `n`      | `<leader>sk`       | Search keymaps                          | telescope.nvim     |
| `n`      | `<leader>sf`       | Find files                              | telescope.nvim     |
| `n`      | `<leader>ss`       | Telescope builtins                      | telescope.nvim     |
| `n`      | `<leader>sw`       | Search current word                     | telescope.nvim     |
| `n`      | `<leader>sg`       | Live grep                               | telescope.nvim     |
| `n`      | `<leader>sd`       | Search diagnostics                      | telescope.nvim     |
| `n`      | `<leader>sr`       | Resume last picker                      | telescope.nvim     |
| `n`      | `<leader>s.`       | Search recent files                     | telescope.nvim     |
| `n`      | `<leader><leader>` | Search buffers                          | telescope.nvim     |
| `n`      | `<leader>dx`       | Toggle diagnostics view                 | trouble.nvim       |
| `n`      | `<leader>dX`       | Toggle buffer diagnostics               | trouble.nvim       |
| `n`      | `<leader>cs`       | Toggle LSP symbols                      | trouble.nvim       |
| `n`      | `<leader>cl`       | Toggle LSP definitions/references       | trouble.nvim       |
| `n`      | `<leader>dL`       | Toggle location list                    | trouble.nvim       |
| `n`      | `<leader>dQ`       | Toggle quickfix list                    | trouble.nvim       |
| `n,x`    | `<Up>`             | Add multicursor above                   | multicursor.nvim   |
| `n,x`    | `<Down>`           | Add multicursor below                   | multicursor.nvim   |
| `n,x`    | `<leader><Up>`     | Skip cursor above                       | multicursor.nvim   |
| `n,x`    | `<leader><Down>`   | Skip cursor below                       | multicursor.nvim   |
| `n,x`    | `<leader>n/N`      | Add next/previous match                 | multicursor.nvim   |
| `n,x`    | `<leader>s/S`      | Skip next/previous match                | multicursor.nvim   |
| `n`      | `<C-LeftMouse>`    | Add cursor with mouse                   | multicursor.nvim   |
| `n`      | `<C-LeftDrag>`     | Drag cursor selection                   | multicursor.nvim   |
| `n`      | `<C-LeftRelease>`  | End cursor drag                         | multicursor.nvim   |
| `n,x`    | `<C-q>`            | Toggle multicursor mode                 | multicursor.nvim   |
| `n`      | `\`                | Reveal current file in file explorer    | neo-tree.nvim      |
| `n`      | `<leader>e`        | Toggle file explorer                    | neo-tree.nvim      |
| `n`      | `<leader>ngs`      | Show git status in float                | neo-tree.nvim      |
| `n`      | `<leader>z`        | Dismiss notifications                   | noice.nvim         |
| n        | `<leader>hs`       | Stage current hunk                      | gitsigns.nvim      |
| n        | `<leader>hr`       | Reset current hunk                      | gitsigns.nvim      |
| v        | `<leader>hs`       | Stage selected hunk                     | gitsigns.nvim      |
| v        | `<leader>hr`       | Reset selected hunk                     | gitsigns.nvim      |
| n        | `<leader>hS`       | Stage entire buffer                     | gitsigns.nvim      |
| n        | `<leader>hR`       | Reset entire buffer                     | gitsigns.nvim      |
| n        | `<leader>hp`       | Preview hunk                            | gitsigns.nvim      |
| n        | `<leader>hi`       | Inline preview hunk                     | gitsigns.nvim      |
| n        | `<leader>hb`       | Show full blame for current line        | gitsigns.nvim      |
| n        | `<leader>hd`       | Show diff for current file              | gitsigns.nvim      |
| n        | `<leader>hD`       | Show diff against previous commit (`~`) | gitsigns.nvim      |
| n        | `<leader>hQ`       | Set quickfix list for all hunks         | gitsigns.nvim      |
| n        | `<leader>hq`       | Set quickfix list for current buffer    | gitsigns.nvim      |
| n        | `<leader>tb`       | Toggle current line blame               | gitsigns.nvim      |
| n        | `<leader>tw`       | Toggle word diff                        | gitsigns.nvim      |
| o/x      | `ih`               | Select hunk as text object              | gitsigns.nvim      |

<br>
<br>

## Contributors

<div>
<span>
<a href="https://github.com/Bourbxn">
 <img src="https://images.weserv.nl/?url=avatars.githubusercontent.com/u/86193685?v=4&h=80&w=80&fit=cover&mask=circle&maxage=7d"/>
</a>
</span>
