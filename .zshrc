# Path to your oh-my-zsh installation.
export ZSH="/Users/nickhultz/.oh-my-zsh"

# Name of the theme to load.
ZSH_THEME="agnoster"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

# User configuration
export DEFAULT_USER="nickhultz"

# Config option needed so git can use GPG to sign commits
export GPG_TTY=$(tty)

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

alias zshconfig="vim ~/.zshrc"

# ===================
# Nvm Setup
# ===================
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# ===================
# Pyenv Setup
# ===================
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# ===================
# Gopath Setup
# ===================
export GOPATH=$HOME/Projects/go
export PATH=$PATH:$(go env GOPATH)/bin
