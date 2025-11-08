[[ -r $ZDOTDIR/.zaliases ]] && source $ZDOTDIR/.zaliases

HISTSIZE=5000
SAVEHIST=5000
HISTFILE="$HOME/.cache/zsh/history"
setopt hist_ignore_dups     # do not record an event that was just recorded again
setopt hist_ignore_all_dups # delete an old recorded event if a new event is a duplicate
setopt hist_ignore_space    # do not record an event starting with a space
setopt hist_save_no_dups    # do not write a duplicate event to the history file
setopt inc_append_history   # write to the history file immediately, not when the shell exits
setopt share_history        # share history between terminals

fpath=($ASDF_DATA_DIR/completions $fpath)

autoload -Uz compinit
compinit

source $HOME/.config/zsh/plugins/catppuccin_mocha-zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-autocomplete/zsh-autocomplete.plugin.zsh

eval "$(starship init zsh)"
