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

# Languages

## Node

### pnpm
export PNPM_HOME="/Users/sgb39/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
