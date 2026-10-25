# .dotfiles

Personal developer environment for Linux / Wayland.

## Stack
- **Window Manager**: Hyprland (`.config/hypr/`)
- **Terminal & Multiplexer**: Foot, Herdr
- **Shell & Prompt**: Bash with [Starship](.config/starship.toml)
- **Editor**: Neovim ([LazyVim](.config/nvim/))
- **Tool Management**: [mise](.config/mise/config.toml)
- **Agent Skills**: Custom capabilities in `.agents/skills/`

## Bootstrap on a Fresh Machine
```bash
git clone --bare https://github.com/odnmalau/.dotfiles.git "$HOME/.dotfiles"
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
dotfiles config --local status.showUntrackedFiles no
dotfiles checkout
```
