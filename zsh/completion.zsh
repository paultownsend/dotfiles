# completion.zsh

# colorize with $LS_COLORS when completing ls(1)
zstyle ':completion:*' list-colors "${(@s.:.)LS_COLORS}"
