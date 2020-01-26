# Path to your oh-my-zsh installation.
export ZSH="$HOME/.config/.oh-my-zsh"

# Set name of the theme to load
ZSH_THEME="agnoster"

source $ZSH/oh-my-zsh.sh

# Turns off user info on prompt
DEFAULT_USER="nick"

# Needed so git can use GPG to sign commits
export GPG_TTY="tty"

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR="nvim"
else
  export EDITOR="vim"
fi

# ====================================================
# Aliases
# ====================================================
alias zshconfig="nvim $HOME/.zshrc"
alias ohmyzsh="nvim $HOME/.oh-my-zsh"
alias cat="bat"
alias find="fd"
alias vim="nvim"

# ====================================================
# Homebrew
# ====================================================
export PATH="/usr/local/sbin:$PATH"

# ====================================================
# Rust
# ====================================================
export PATH="$HOME/.cargo/bin:$PATH"

# ====================================================
# Golang
# ====================================================
export GOPATH=$HOME/Projects/go
export PATH="$(go env GOPATH)/bin:$PATH"

# ====================================================
# FZF - https://github.com/junegunn/fzf
# ====================================================
[ -f $HOME/.fzf.zsh ] && source $HOME/.fzf.zsh

# ====================================================
# Google Cloud SDK
# ====================================================
GCLOUD_SDK=$HOME/google-cloud-sdk/path.zsh.inc
[ -f $GCLOUD_SDK ] && source $GCLOUD_SDK

GCLOUD_COMPLETION=$HOME/google-cloud-sdk/completion.zsh.inc
[ -f $GCLOUD_COMPLETION ] && source $GCLOUD_COMPLETION

# ====================================================
# JENV - https://github.com/jenv/jenv
# ====================================================
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

# ====================================================
# NVM - https://github.com/nvm-sh/nvm
# ====================================================
export NVM_DIR="$HOME/.nvm"

# ====================================================
# Starship Prompt - https://github.com/starship/starship
# ====================================================
eval "$(starship init zsh)"

# ====================================================
# Lazy Loading - https://github.com/benvan/sandboxd
# ====================================================
SANDBOXD=$HOME/.config/sandboxd/sandboxd.sh
[ -f $SANDBOXD ] && source $SANDBOXD
