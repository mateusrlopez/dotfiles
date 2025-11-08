export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.cache"
export ASDF_DATA_DIR="$HOME/.asdf"
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

export NODE_ENV=development
export GOPATH="$HOME/.local/go"
export JAVA_HOME="$HOME/.local/java"

export PATH="$GOPATH/bin:$JAVA_HOME/bin:$ASDF_DATA_DIR/shims:$HOME/.local/bin:$PATH"

export BAT_THEME="Catppuccin Mocha"
export STARSHIP_CONFIG="$XDG_CONFIG_HOME/starship/starship.toml"
