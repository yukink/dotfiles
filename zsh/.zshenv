# Environment
if [[ -z "$XDG_CONFIG_HOME" ]]; then
    export XDG_CONFIG_HOME="$HOME/.config"
fi

if [[ -z "$XDG_CACHE_HOME" ]]; then
    export XDG_CACHE_HOME="$HOME/.cache"
fi

if [[ -z "$XDG_DATA_HOME" ]]; then
    export XDG_DATA_HOME="$HOME/.local/share"
fi

if [[ -d "$XDG_CONFIG_HOME/zsh" ]]; then
    export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
fi

# Language
export LANGUAGE="en_US.UTF-8"
export LANG="${LANGUAGE}"
export LC_ALL="${LANGUAGE}"
export LC_CTYPE="${LANGUAGE}"

# Editor
export EDITOR=nvim
export GIT_EDITOR="${EDITOR}"

# golang
export GOPATH="$HOME"
export GOBIN="$GOPATH/bin"
export GO111MODULE=on
export PATH="$GOBIN:$PATH"

# Source management
export GHQ_ROOT="$HOME/src"

# zplug
export ZPLUG_HOME=/usr/local/opt/zplug

# zsh
typeset -gU cdpath fpath mailpath path

path=(
  /usr/local/{bin,sbin}
  $ZPLUG_HOME/bin
  $path
)

# history
export HISTFILE="$ZDOTDIR/history"
export HISTSIZE=1000000
export SAVEHIST=1000000
setopt hist_ignore_dups