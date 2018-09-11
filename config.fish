# ===================
# Rust Setup
# ===================
set -x PATH $PATH $HOME/.cargo/bin

# ===================
# Gopath Setup
# ===================
set -x GOPATH $HOME/Projects/go
set -x PATH $PATH (go env GOPATH)/bin

# ===================
# Pyenv Setup
# ===================
if type -q pyenv
    status --is-interactive; and source (pyenv init -|psub)
    status --is-interactive; and source (pyenv virtualenv-init -|psub)
end

# ===================
# Random Stuff
# ===================

# Needed so git can use GPG to sign commits
set -x GPG_TTY (tty)

# Preferred editor for local and remote sessions
if test -n "$SSH_CONNECTION"
    set -x EDITOR vim
else
    set -x EDITOR nvim
end
