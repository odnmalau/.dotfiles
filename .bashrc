# If not running interactively, don't do anything (leave this at the top of this file)
[[ $- != *i* ]] && return

# /etc/omarchy.conf is written by omarchy-dev-link. When absent, force the
# package default instead of preserving a stale inherited dev-link value before
# we decide which rc file to source.
if [[ -f /etc/omarchy.conf ]]; then
  source /etc/omarchy.conf
  export OMARCHY_PATH="${OMARCHY_PATH:-/usr/share/omarchy}"
else
  export OMARCHY_PATH=/usr/share/omarchy
fi
source "$OMARCHY_PATH/default/bash/rc"
export PATH="$HOME/.config/composer/vendor/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="/home/odnmalau/.config/herd-lite/bin:$PATH"
export PHP_INI_SCAN_DIR="/home/odnmalau/.config/herd-lite/bin:$PHP_INI_SCAN_DIR"

. "$HOME/.local/share/../bin/env"

# 1Password SSH Agent
export SSH_AUTH_SOCK=~/.1password/agent.sock
eval "$(direnv hook bash)"
. "$HOME/.cargo/env"

# Dotfiles bare git repository alias
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
