# config.zsh

# history
# <http://zsh.sourceforge.net/Doc/Release/Options.html#History>
HISTFILE="$HOME/.zsh_history"
HISTSIZE=20000
SAVEHIST=10000

setopt bang_hist
setopt extended_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_ignore_space
setopt hist_reduce_blanks
setopt hist_verify
setopt inc_append_history_time
