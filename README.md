# dotfiles

### My terminal setup (zsh/tmux/vim/etc)
![term](/images/term_screenshot.png?raw=true)

## Theme setup on another Mac

Install Ghostty, Neovim, and optionally cmux. Ghostty uses the built-in TokyoNight
and Kanagawa Dragon themes, plus the four custom palettes in `ghostty/themes/`.
The config also selects the Fira Code font. Neovim bootstraps lazy.nvim and
downloads its plugins on first launch.

Clone this repository, then install these paths (back up existing files first):

| Repository path | Destination |
| --- | --- |
| `ghostty/` | `~/.config/ghostty/` |
| `nvim/` | `~/.config/nvim/` |
| `local/bin/theme-cycle`, `local/bin/theme-toggle` | `~/.local/bin/` |
| `zshrc` | `~/.zshrc` |
| `cmux/cmux.json` | `~/.config/cmux/cmux.json` |

If cmux already has a config, merge only `app.appearance = "system"` and
`browser.theme = "system"` rather than replacing unrelated settings. The shell
config adds `~/.local/bin` to `PATH`. Both scripts must remain executable.
Symlinking the Ghostty and Neovim directories into `~/.config` makes
`theme-cycle` edit the repository copies; copying them instead keeps the
repository unchanged when cycling.

`theme-cycle` selects Tokyo, Kanagawa, or Bamboo (or accepts `tokyo`,
`kanagawa`, or `bamboo` explicitly). It edits the Ghostty theme pair and
`nvim/lua/plugins/themes.lua`, then reloads cmux if it is installed.
`theme-toggle` switches macOS light/dark appearance and, when Bamboo is
selected, updates Neovim's Bamboo variant. Existing Neovim processes do not
reload their colorscheme automatically. On first use macOS may ask for
permission to control System Events.
