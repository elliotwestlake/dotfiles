source $HOME/.zsh-keep
export ZSH="$HOME/.oh-my-zsh"
export FZF_DEFAULT_COMMAND='rg --files'
export HOMEBREW_GITHUB_API_TOKEN='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'
export NODE_ENV=dev
export NODE_LOG_LEVEL=debug

export GOENV_ROOT="$HOME/.goenv"
export PATH="$GOENV_ROOT/bin:$PATH"
export PATH="$(yarn global bin):$PATH"
export PATH="/usr/local/opt/libpq/bin:$PATH"

alias n="nvim"

plugins+=(git)

ZSH_THEME="vercel"

source $ZSH/oh-my-zsh.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
