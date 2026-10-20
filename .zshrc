# Shell

## zsh

### Ensure only one copy of each `PATH` entry
typeset -U path PATH

# Terminal

## Starship (prompt)
export STARSHIP_CONFIG=~/.config/starship/starship.toml
eval "$(starship init zsh)"

## eza (alternative to ls)
alias ls="eza --icons --color=always"

## bat (alternative to cat)
alias cat=bat

## fzf (command line fuzzy finder)
source <(fzf --zsh)

# Environment

## Environment variables
if [ -f "$HOME/.env" ]; then
  set -a
  source "$HOME/.env"
  set +a
fi

# Development

## git
autoload -Uz compinit && compinit

## Terraform
autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /opt/homebrew/bin/terraform terraform

# Languages

## Python

### uv
. "$HOME/.local/bin/env"

## Julia
path=('/Users/sgb39/.juliaup/bin' $path)
export PATH
[ -f "/Users/sgb39/.julia/juliaup/completions/zsh.zsh" ] && source "/Users/sgb39/.julia/juliaup/completions/zsh.zsh"

## Node

### bun
[ -s "/Users/sgb39/.bun/_bun" ] && source "/Users/sgb39/.bun/_bun"
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

### pnpm
export PNPM_HOME="$HOME/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME/bin:"*) ;;
  *) export PATH="$PNPM_HOME/bin:$PATH" ;;
esac
