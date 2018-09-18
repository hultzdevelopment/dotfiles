# ==============================================
# Rust Setup
# ==============================================
set -x PATH $PATH $HOME/.cargo/bin

# ==============================================
# Gopath Setup
# ==============================================
set -x GOPATH $HOME/Projects/go
set -x PATH $PATH (go env GOPATH)/bin

# ==============================================
# Python Pip Global Overrides
# ==============================================
function gpip2
    set -lx PIP_REQUIRE_VIRTUALENV 0
    pip2 $argv
end

function gpip3
    set -lx PIP_REQUIRE_VIRTUALENV 0
    pip3 $argv
end

# ==============================================
# Random Stuff
# ==============================================

# Needed so git can use GPG to sign commits
set -x GPG_TTY (tty)

# Preferred editor for local and remote sessions
if test -n "$SSH_CONNECTION"
    set -x EDITOR vim
else
    set -x EDITOR nvim
end

# ==============================================
# Aliases 
# ==============================================
alias vim="nvim"
